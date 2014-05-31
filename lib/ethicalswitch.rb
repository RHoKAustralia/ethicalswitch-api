require "net/http"

require "sinatra/base"
require "sequel"
require "pg"
require "json"

require "ethicalswitch/version"
require "ethicalswitch/helpers"
require "ethicalswitch/app"

module EthicalSwitch
  class Error < StandardError; end

  autoload :User, "ethicalswitch/models/user"

  def self.setup(settings)
    env = settings["RACK_ENV"]
    if env.nil? || env.empty?
      raise Error, "RACK_ENV is required"
    end

    database = Sequel.connect(settings['DATABASE_URL'] || 'postgres://localhost/mydb')
    database << "SET CLIENT_ENCODING TO 'UTF8';"
    Sequel.default_timezone = :utc
    Sequel::Model.plugin :timestamps
    Sequel::Model.plugin :json_serializer
  end

  def self.app
    @app ||= Rack::Builder.app { run EthicalSwitch::App }
  end
end
