require 'sinatra'

get '/' do

	if !params[:incr] || params[:incr].empty?	#Unless I pass something through the URL, it will show Hello World
  		@count = 0.to_i
  	else
  		@count = @count.to_i + params[:incr].to_i
  	end

	erb :form
end

post '/' do
	redirect to('/?incr=' + (params[:var].to_i + 1).to_s)
end

# require 'sinatra'

# get '/' do
#   @number = params[:number]
#   erb :index
# end