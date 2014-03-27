#goal 1: print a single item w/ the tax added to it

class Product
	def initialize(name, cost, status, quantity)
		@name = name
		@cost = cost
		@status = status
		@quantity = quantity		
	end
	def name
		@name
	end
	def quantity
		@quantity
	end
	def cost
		@cost
	end
	def sales_tax
		@sales_cost = 0
		if @status == "exempt"
			@sales_cost = 0
		elsif @status == "taxable"
				
		@sales_cost = 0.1 * @cost
		end
	end
	def total_cost
		if @status == "exempt"
			@cost * 1 * @quantity
		elsif @status == "taxable"
			@cost * 1.1 * @quantity
		elsif @status == "imported"
			@cost * 1.05 * @quantity
		elsif @status == "txable_&_imported"
			@cost *1.15	* @quantity							
		end
	end
end

book = Product.new("book", 12.49, "exempt", 1)
#puts book.total_cost

music_cd = Product.new("Music CD", 14.99, "taxable", 1)
#puts music_cd.total_cost

chocolate_bar = Product.new("Chocolate Bar", 0.85, "exempt", 1)
#puts chocolate_bar.total_cost

puts "First receipt: "
puts "#{book.quantity} #{book.name} at #{book.cost}" 
puts "#{music_cd.quantity} #{music_cd.name} at #{music_cd.cost}"
puts "#{chocolate_bar.quantity} #{chocolate_bar.name} at #{chocolate_bar.cost}"
print "Sales tax:  "
print book.sales_tax + music_cd.sales_tax + chocolate_bar.sales_tax
puts ""
print "Total:  "
print book.cost + music_cd.cost + chocolate_bar.cost
puts ""



#{book.total_cost} + #{music_cd.total_cost} + #{chocolate_bar.total_cost}