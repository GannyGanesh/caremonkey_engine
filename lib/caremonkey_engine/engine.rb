# CURRENT FILE :: lib/team_page/engine.rb
module CaremonkeyEngine

  class Engine < Rails::Engine

    initialize "caremonkey_engine.load_app_instance_data" do |app|
      Caremonkey.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "caremonkey_engine.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
