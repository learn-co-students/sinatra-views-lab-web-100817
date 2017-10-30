require 'date'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		@day = Time.now.strftime("%A").to_s
		@month = Time.now.strftime("%B").to_s
		@num = Time.now.strftime("%e").to_s
		@year = Time.now.strftime("%Y").to_s 
		erb :date
	end


end
