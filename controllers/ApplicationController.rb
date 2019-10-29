







class ApplicationController < Sinatra::Base
    require 'bundler'
    Bundler.require()

    require 'dotenv'
    #  require './config/environments'
    
      enable :sessions

    


    ActiveRecord::Base.establish_connection(
        :adapter => 'postgresql',
        :database => 'vacation_planner'
    )
    use Rack::MethodOverride
    set :method_override, true

    set :views, File.expand_path('../../views', __FILE__)

    #teach it how to view static assets
    set :public_dir, File.expand_path('../../public', __FILE__)

    
    get '/' do
        redirect '/users/login'
    end

    get '/test' do
        sample_message = "this should appear in pry"
        binding.pry # STOPS EXECUTION, OPENS A REPL IN YOUR TERMINAL -- type exit in your terminal to exit pry and complete execution of the route
        
        "pry has finished -- here's sample_message #{sample_message}"
    end

    get '/splashpage' do
        erb :splashpage
    end

end