module Basicss
  module Rails

    class Engine < ::Rails::Engine

      config.before_initialize do
        # << faz push no array paths com uma string informada
        #Dir["./"].each { |p| Rails.application.config.assets.paths << p }
        # Se for o caso, usar: root.join("lib/assets/javascripts")
      end

    end

  end
end
