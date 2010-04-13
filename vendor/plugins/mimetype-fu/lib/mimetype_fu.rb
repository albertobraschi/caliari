require 'tempfile'
require 'extensions_const'

module MimetypeFu
  def self.mime_type_from_path(path)
    `file --mime -br "#{path}"`.
      strip.
      gsub(/^.*: */, '').
      gsub(/;.*$/, '').
      gsub(/,.*$/, '')
  end
end

class File

  def self.mime_type(file)
    case file
    when File, Tempfile
      unless RUBY_PLATFORM.include? 'mswin32'
        mime = MimetypeFu.mime_type_from_path(file.path)
      else
        mime = EXTENSIONS[File.extname(file.path).gsub('.','').downcase.to_sym]
      end
    when String
      mime = EXTENSIONS[(file[file.rindex('.')+1, file.size]).downcase.to_sym] unless file.rindex('.').nil?
    when StringIO
      temp = File.open(Dir.tmpdir + '/upload_file.' + Process.pid.to_s, "wb")
      temp << file.string
      temp.close
      mime = MimetypeFu.mime_type_from_path(temp.path)
      File.delete(temp.path)
    end
    return mime || 'unknown/unknown'
   end

  def self.extensions
    EXTENSIONS
  end

end
