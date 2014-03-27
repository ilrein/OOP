#grid = ['x', 'y'] #track grid size (shall do later)
#GPS = [0, 0] #tracking a rover's coordinates
#class OrderingTheRover
#	rolling = [] #this array will store the multiple movement cmds


#end

class Rover
	
	attr_accessor :direction, :x, :y, :rolling

	def initialize(x, y, direction, rolling)
		@direction = direction
		@x = x
		@y = y
		@facing = %w[N E S W] #this array keeps tabs on the orientation of a rover


		while @facing[0] != @direction

	 		@facing.rotate!
	 		#puts @facing.inspect
	 	end

		@rolling = rolling.split("")
		
		@rolling.each do |x|
			move(x)
		end
	 	#if @direction == 'N'
	 	#	@facing = %w[N E S W]
	 	
	 end

	 def move(command)
	 	if command == 'L' 
	 		@facing.rotate!(-1)
	 	elsif command == 'M'
	 		#puts "rover @facing" + @facing[0]
	 		if @facing[0] == 'N'
	 			@y += 1
	 		elsif @facing[0] == 'E'
	 			@x += 1
	 		elsif @facing[0] == 'S'
	 			@y -= 1
	 		elsif @facing[0] == 'W'
	 			@x -= 1
	 		end
	 	elsif command == 'R'
	 		@facing.rotate!(+1)
	 	end
	 end

	 def dir
	 	@facing[0]
	 end
	end

	bot1 = Rover.new(1, 2,'N','LMLMLMLMM')
	bot2 = Rover.new(3, 3,'E','MMRMMRMRRM') # 5, 1, E 
	bot3 = Rover.new(1, 1, 'S', 'M')
#rolling << bot1.movement()
#

#rolling.each do |motion|
#	bot1.move(motion)	
#end
# puts ""

puts bot1.x
puts bot1.y
puts bot1.dir
puts ""

puts bot2.x
puts bot2.y
puts bot2.dir
puts ""

puts bot3.x
puts bot3.y
puts bot3.dir
# #puts bot1.rolling.inspect