module EthicalSwitch
  class App < Sinatra::Base
    register Helpers

    set     :app_file,      __FILE__
    set     :public_folder, __dir__ + '/public/app'
    enable  :static

    # Comma separate list of remote hosts that are allowed.
    # :any will allow any host
    set :allow_origin, :any

    # HTTP methods allowed
    set :allow_methods, [:get, :post]

    # Allow cookies to be sent with the requests
    set :allow_credentials, true

    get "/" do
      @app_name = "Ethical Switch"
      erb :index
    end

    post "/users/" do
      options = {
        name:           params[:name],
        first_name:     params[:first_name],
        last_name:      params[:last_name],
        email:          params[:email],
        location:       params[:location],
        birthday:       params[:birthday],
        gender:         params[:gender],
        birthday:       params[:email],
        facebook_id:    params[:facebook_id],
        facebook_token: params[:facebook_token]
      }
      User.create(options).to_json
    end

    get "/users/count/?" do
      {:users => User.count}.to_json
    end
  end
end