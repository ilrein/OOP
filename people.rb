#module

class Person
	#attr_accessor :name
	def initialize(name)
		puts ""
		puts "Initializing"
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is a banana"
	end
end

class Student < Person
	def learn
		puts "#{@name} gets it"
	end
end	

student1 = Student.new("Chris")
student1.greeting
student1.learn

student2 = Student.new("Jake")
student2.greeting
student2.learn

int1 = Instructor.new("Tom")
int1.greeting
int1.teach