require "sinatra"
require_relative "random_pair.rb"
enable :sessions

get '/' do
	message = params[:message]
	
	erb :login, locals:{message: message}
end

post '/login' do
	correct_login = {'jkeiffer' => "1234", 'scstew' => "4321", 'ldeems' => "1233"}
	username = params[:username]
	password = params[:password]
	message = "Incorrect Username or Password, please try again."
	success = "Login Successful"
	#{}"#{correct_login} #{newusername} newuser,new pass is #{newpassword}"
	#p "#{correct_login} correctlog"
	#p "#{loginhash} loghash"
	#p loginhash.class
	 correct_login.each_pair do |key, value|
	# 	p "#{key}#{value}"
		if username == key && password == value
			redirect '/names?success=' + success
		elsif username == key
			message = "Incorrect password!"
			redirect '/?message=' + message
		elsif password == value
			message = "Incorrect username!"
			redirect '/?message=' + message
		end
		message = "Incorrect username and password!"
		redirect '/?message=' + message
	
	 end
end



get '/names' do
	success = params[:success]
	erb :names, locals:{success: success}
end

post '/names' do
	session[:firstname] = params[:firstname]
	session[:lastname] = params[:lastname]
	success = params[:success]
	redirect "/randnames?"
end

get '/randnames' do
	erb :randnames
end

post '/randnames' do
	rando = params[:input]
	capital = caps(rando)
	randfunc = random_pair(capital)
	session[:strng] = stringer(randfunc)
	

	

	redirect "/results"
end

get '/results' do
	erb :results, locals:{firstname:session[:firstname], lastname:session[:lastname], strng:session[:strng]}
end

post '/results' do
	x = params[:checked]
	final = restring(x)
	redirect "/finalcut?final=" + final
end

get '/finalcut' do
	final = params[:final]
	erb :finalcut, locals:{firstname:session[:firstname], lastname:session[:lastname], final: final}
end

post '/finalcut' do
	final = params[:final]
	redirect "/randnames"
end