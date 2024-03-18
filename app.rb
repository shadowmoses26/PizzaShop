#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'rackup'


configure :development do
	#set :port, 5433
	set :database,{adapter: 'postgresql',  encoding: 'unicode', database: 'pizzaShop', pool: 2, username: 'postgres', password: 'root', port: '5433'}
end

class Product < ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index
end


get '/about' do
	erb :about
end