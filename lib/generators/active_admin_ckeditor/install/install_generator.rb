require 'rails/generators'

module ActiveAdminCkeditor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def install_ckeditor
        generate "ckeditor:install"
      end

      def require_assets
        gsub_file "app/assets/javascripts/active_admin.js.coffee", '#= require active_admin/base', "#= require active_admin/base\n#= require ckeditor/init"
        gsub_file "app/assets/stylesheets/active_admin.scss", '@import "active_admin/base";', "@import \"active_admin/base\";\n@import \"activeadmin-ckeditor\";"
      end

      def edit_config
        application 'config.autoload_paths += %W(#{ config.root }/app/models/ckeditor)'
        environment(nil, env: "production") do
          "config.assets.precompile += %W( ckeditor/plugins/**/*.js )"
        end
      end

    end
  end
end
