ENV['RAILS_ENV'] ||= 'development'

RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem 'haml'
  config.gem 'will_paginate', :version => '~> 2.3.11', :source => 'http://gemcutter.org'
  config.gem 'mime-types', :lib => 'mime/types', :version => "= 1.16"

  config.time_zone = 'Brasilia'
  config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]
  config.i18n.default_locale = 'pt-BR'

  config.action_mailer.perform_deliveries = :true
  config.action_mailer.raise_delivery_errors = :true
  config.action_mailer.default_charset = "utf-8"

end


ActionMailer::Base.delivery_method = :sendmail
ActionMailer::Base.sendmail_settings = {
  :location       => '/usr/sbin/sendmail',
  :arguments      => '-i -t'
}
ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(
  :default => '%d/%m/%Y',
  :date_time12  => "%d/%m/%Y %I:%M%p",
  :date_time24  => "%d/%m/%Y %H:%M",
  :short_date => "%d-%m-%Y"
)
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LfCcgwAAAAAACaPR7W_fSyMn4nBZFpiFuxJO_kM'
ENV['RECAPTCHA_PUBLIC_KEY'] = '6LfCcgwAAAAAAEt0tB6-VzQ-hpAM68gKRF70fqy6'

