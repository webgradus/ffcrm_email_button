module FfcrmEmailButton
  class Engine < ::Rails::Engine
    config.to_prepare do
      require 'ffcrm_email_button/email_button_view_hooks'
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
  end
end
