class ApplicationController < Sinatra::Base
    require 'bundler'
    Bundler.require()

    get '/' do
        "This is your Vacation Planner."
    end
end