require 'pry-byebug'

class School

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end


	def add_student(name,grade)
		if @roster.keys.include?(grade)
			@roster[grade] << name
		else
			@roster[grade] = []
			@roster[grade] << name
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.collect do |grade, names_array|
			@roster[grade] = names_array.sort
		end
		roster
	end
end



school = School.new("HiSchool")
school.add_student("john", 10)
school.add_student("jeff", 10)

