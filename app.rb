require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:rabbitDB.sqlite3"

require "./models"

get "/" do
	#User.create(username: "iamfrankie", password: "ilovejohn", fname: "francesca", lname: "rabbit")  #the @ is an instance variable that 
	#we are setting to all users by citing the class and asking for .all, 
	#a command
	erb :index
end

get "/user" do 
	@rabbit = User.last
	erb :user
end

get "/sign-in" do
	erb :signin
end

get "/rainbow" do
	erb :grilledcheese
end	

get "/jello" do
	erb :jello
end	

get "/old" do
	erb :greenapple
end

get "/water" do
	erb :blue
end

get "/layout" do
	erb :layout
end


post "/sign-in" do
	puts "my params are:" + params.inspect
	@rabbit = User.where(username: params[:username]).last
	if @rabbit.password == params[:password]     
		redirect '/'   
	else    
	   
		redirect '/login-failed'  
	end 
end

get "/login-failed" do

	erb :fail
end



