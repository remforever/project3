require 'refinerycms-base'

module Refinery
  module Bets
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "bets"
          plugin.activity = {
            :class => Bet,
            :title => 'result'
          }
        end
      end
    end
  end
end
