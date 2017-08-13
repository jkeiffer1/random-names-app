require "sinatra"
require_relative "random_pair.rb"

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
	firstname = params[:firstname]
	lastname = params[:lastname]
	success = params[:success]
	redirect '/randnames?firstname=' + firstname + "&lastname=" + lastname
end

get '/randnames' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	erb :randnames, locals:{firstname: firstname, lastname: lastname}
end

post '/randnames' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	rando = params.values
	p "rando here#{rando}"
	randfunc = random_pair(rando)
	p "randfunc is here#{randfunc}"
	strng = stringer(randfunc)
	p "string is here #{strng}"
	redirect '/results?firstname=' + firstname + "&lastname=" + lastname + "&strng=" + strng
end

get '/results' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	strng = params[:strng]
	erb :results, locals:{firstname: firstname, lastname: lastname}
end

post '/results' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	redirect '/randnames?firstname=' + firstname + "&lastname=" + lastname
end