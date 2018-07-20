require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end

 get '/questions' do
   erb :questions
 end


 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

   @travel = question(@total)
   if @travel == "nyc"
     erb :nyc
   elsif @travel == "miami"
     erb :miami
   elsif @travel == "LA"
     erb :LA
     elsif @travel == "dc"
     erb :dc
  end
end
end







