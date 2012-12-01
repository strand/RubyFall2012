class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	%w(pillows cushions).each do |s|
		define_method("#{s.gsub(/s$/, '')}_colors") do
			instance_variable_get("@#{s}s").count
		end

		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end
end
