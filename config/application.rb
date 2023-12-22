require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LambdaLabs
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # config/application.rb

    ##Agragnado el folder del los custom middleware al autoload
    config.autoload_paths << Rails.root.join('app', 'middleware')

    ##Instacia un custom middleware para validar un token estatico haciendo la simulacion de la sesino
    ##config.middleware.use StaticTokenAuthorization

    ##Serializador para las respuestas JSON
    config.generators do |generate|
      generate.template_engine :erb
      generate.serializer :application_serializer
    end

    ##Configuracion para Tasa solicitures
    config.middleware.use Rack::Attack
    Rack::Attack.throttle("IP request:", limit: 3, period: 1.minute) do |request|
      request.ip
    end

    ##Configuracion para el versionamiento del API
    config.middleware.use Versionist::Middleware 
    Versionist.configuration do |config|
      config.default_version = 1
      config.allowed_versions = [ 1 ]
      config.versioning_strategy = :path
      config.path_versioning = true
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
