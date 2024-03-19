# encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'rackup'

configure :development do
  # set :port, 5433
  set :database, { adapter: 'postgresql', encoding: 'unicode', database: 'pizzaShop', pool: 2, username: 'postgres', password: 'root', port: '5433' }
end

class Order < ActiveRecord::Base

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

post '/cart' do

  @orders_input = params[:orders]
  @items = parse_orders_input @orders_input
  @items.each do |item|

    item[0] = Product.find(item[0])
  end

  erb :cart
end

post '/place_order' do
  @order = Order.create params[:order]

  erb :order_placed
  # if @order.save
  #   erb "<h2>Thank you! You order has benn placed</h2>"
  # else
  #   @error = @order.errors.filter.first
  #   erb "Error"
  # end
end

def parse_orders_input (orders_input)
  s1 = orders_input.split(/,/)
  arr = []
  s1.each do |x|
    s2 = x.split(/=/)
    s3 = s2[0].split(/_/)
    id = s3[1]
    cnt = s2[1]
    arr2 = [id, cnt]
    arr.push arr2
  end
  return arr
end

