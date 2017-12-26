require 'yaml'
class MadLibInputGenerator
	attr_reader :inputs

	def initialize(mad_lib_name)
		@inputs = load_mad_lib(mad_lib_name)
	end

	def load_mad_lib(mad_lib_name)
		begin 
			YAML.load(File.read("#{mad_lib_name}.yml"))
		rescue Errno::ENOENT => err
			puts "Sorry, that mad lib no longer exists"
		end
	end
end