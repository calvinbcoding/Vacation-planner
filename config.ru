require 'sinatra/base'

require './contollers/ApplicationController'

map ('/') {
    run ApplicationController
}