$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ffcrm_sendgrid/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ffcrm_sendgrid"
  s.version     = FfcrmSendgrid::VERSION
  s.authors     = ["PitOn"]
  s.email       = ["garik.piton@gmail.com"]
  s.homepage    = "https://github.com/webgradus/ffcrm_sendgrid"
  s.summary     = "Integration of FatFreeCRM with SendGrid email service"
  s.description = "Integration of FatFreeCRM with SendGrid email service"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.14"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "pg"
end
