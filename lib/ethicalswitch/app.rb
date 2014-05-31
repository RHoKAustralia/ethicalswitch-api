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
  end
end