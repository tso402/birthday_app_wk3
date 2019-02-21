require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/'do
    erb :index
  end

  post '/response' do
    @day = params[:day]
    @name = params[:name]
    @month = params[:month]
    @birthday = Date.new(2019,@month.to_i,@day.to_i)
    erb :response
  end
end