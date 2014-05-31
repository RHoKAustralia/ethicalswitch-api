module EthicalSwitch
  class App < Sinatra::Base
    register Helpers

    set     :app_file,      __FILE__
    set     :public_folder, __dir__ + '/public/app'
    enable  :static

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
        birthday:       params[:birthday],
        gender:         params[:gender],
        birthday:       params[:email],
        facebook_id:    params[:facebook_id],
        facebook_token: params[:facebook_token]
      }
      User.create(options).to_json
    end

    get "/users/count/?" do
      User.count.to_json
    end
  end
end