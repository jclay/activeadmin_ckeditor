$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin_ckeditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_ckeditor"
  s.version     = ActiveadminCkeditor::VERSION
  s.authors     = ["Joel Clay"]
  s.email       = ["ra3don92@gmail.com"]
  s.homepage    = "http://github.com/jclay/activeadmin_ckeditor"
  s.summary     = "A plugin that allows you to easily drop Ckeditor into ActiveAdmin."
  s.description = "A plugin that allows you to easily drop Ckeditor into ActiveAdmin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "activeadmin", "~>1.0.0.pre1"
  s.add_dependency "ckeditor", "~>4.1.2"

  s.add_development_dependency "sqlite3"
end
