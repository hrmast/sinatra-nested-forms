require './environment'

module FormsLab
  class App < Sinatra::Base
   
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      binding.pry
      Pirate.new(params)
      binding.pry
      args[:pirate][:ships].each do |args|
        Ship.new(args)
      end
      @ship_yard = Ship.all

     erb :show
    end
  end
end
