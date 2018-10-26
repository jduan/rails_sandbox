require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsSandbox
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.autoload_paths += %W(
      #{Rails.root}/app/models/observers
    )

    config.active_record.observers = :user_observer

    # Dir.chdir("#{Rails.root}/app/observers") do
    #   config.active_record.observers =
    #     Dir["*_observer.rb"].collect { |ob_name| ob_name.split(".").first }
    # end
  end
end
