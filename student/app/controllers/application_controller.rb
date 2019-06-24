require './config/environment'
#only tells us which file to look to, in order to execute the html
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/name" do
    erb :name
  end

  get "/student" do
    @students = Student.all
    erb :student
  end

end
