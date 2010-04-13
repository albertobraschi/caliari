module CategoriasHelper
  def padded_categoria_nome(categoria,repeat = 1,padder = "&nbsp;")
    returning "" do |result|
      (categoria.level*repeat).times { result << padder }
      result << h(categoria.nome)
    end
  end

  def categorias_pai(categorias)
    returning "" do |html|
      unless categorias.empty?
        html << "<ul>"
        categorias.each do |categoria|
          html << "<li>#{link_to "<span>#{categoria.nome}</span>", categoria_path(categoria)}</li>"
        end
        html << "</ul>"
      end
    end
  end

  def nested_set_list_for(categorias)
    returning "" do |html|
      unless categorias.empty?
        html << "<ul>"
        categorias.each do |categoria|
          html << "<li>#{link_to categoria.nome, categoria_path(categoria)}"
          html << nested_set_list_two_for(categoria.children) unless categoria.children.empty?
          html << "</li>"
        end
        html << "</ul>"
      end
    end
  end

  def nested_set_list_two_for(categorias)
    returning "" do |html|
      unless categorias.empty?
        html << "<ul>"
        categorias.each do |categoria|
          html << "<li>#{link_to categoria.nome, categoria_path(categoria)}"
          html << nested_set_list_for(categoria.children) unless categoria.children.empty?
          html << "</li>"
        end
        html << "</ul>"
      end
    end
  end

  def nested_set_full_outline_short(item, options={})
    return if item.nil?
    raise 'Not a nested set model !' unless item.respond_to?(:acts_as_nested_set_options)

    options = {
      :text_column => options[:text_column] || item.acts_as_nested_set_options[:text_column],
      :action => options[:action] || :show,
      :controller => options[:controller] || item.class.to_s.underscore,
      :separator => options[:separator] || ' <img src="/images/arrow.png" alt="arrow"  /> ' }

    s = ''
    for it in item.ancestors
      if block_given?
        s += yield(it) + options[:separator]
      else
        s += link_to( it[options[:text_column]], { :controller => options[:controller], :action => options[:action], :id => it }) + options[:separator]
      end
    end
    if block_given?
      s + yield(item)
    else
      s + h(item[options[:text_column]])
    end
  end

end

