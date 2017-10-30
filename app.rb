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
		time = Time.now
		@time_string = "The date is #{time.strftime("%A")}, #{time.strftime("%B")} #{time.strftime("%d")}, #{time.strftime("%Y")}"
		erb :date
	end

end
