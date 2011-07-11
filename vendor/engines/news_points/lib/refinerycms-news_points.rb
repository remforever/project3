require 'refinerycms-base'

module Refinery
  module NewsPoints
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "news_points"
          plugin.activity = {
            :class => NewsPoint
          }
        end
      end
    end
  end
end
