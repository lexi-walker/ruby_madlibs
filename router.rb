require 'sinatra'
load 'config.rb'

get '/' do
	@inputs = MadLibInputGenerator.new('mad_lib').inputs
	erb :index

end