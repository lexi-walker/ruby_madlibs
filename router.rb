require 'sinatra'
load 'config.rb'

get '/' do
	@mad_lib_name = 'mad_lib'
	@inputs = MadLibInputGenerator.new(@mad_lib_name).inputs
	@counter = 0
	erb :index
end

get '/mad_lib_answers' do
	mad_lib_name = params[:mad_lib_name]
	@sentences = MadLibInputGenerator.new(mad_lib_name)
	@count_back = 0
	@inputs = MadLibInputGenerator.new(mad_lib_name).inputs
	erb :mad_lib_answers

	# create new class called mad lib sentence generator
	# that takes an object with user inputs and index off 
	# of sentence bits and concatenate them together to 
	# create a cohesive output


	# index should allow user to choose mad lib
	# mad lib inputs should take appropriate user inputs
	# mad lib answers should print output 
end