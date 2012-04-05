# CURRENT FILE :: lib/team_page/engine.rb
module Caremonkey

  class Engine < Rails::Engine

    initialize "caremonkey.load_app_instance_data" do |app|
      Caremonkey.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "caremonkey.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
