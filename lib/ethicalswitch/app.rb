module EthicalSwitch
  class App < Sinatra::Base
    register Helpers

    set     :app_file,      __FILE__
    set     :public_folder, __dir__ + '/public/app'
    enable  :static

    before do
  
       headers 'Access-Control-Allow-Origin' => '*', 
                'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']  
    end

    set :protection, false

    get "/" do
      File.read(File.join(settings.public_folder, 'index.html'))
    end

    options "/users/" do
      200
    end

    post "/users/" do
      headers 'Access-Control-Allow-Origin' => '*', 
              'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']  
      options = {
        name:           params[:name],
        first_name:     params[:first_name],
        last_name:      params[:last_name],
        email:          params[:email],
        location:       params[:location],
        birthday:       params[:birthday],
        gender:         params[:gender],
        birthday:       params[:email],
        facebook_id:    params[:id],
        facebook_token: params[:facebook_token]
      }
      User.create(options).to_json
    end

    get "/users/count/?" do
      {:users => User.count}.to_json
    end

    post "/test/" do
      params.to_json
    end
  end
end