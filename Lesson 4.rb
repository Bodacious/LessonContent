# shop
# - items(array)
# - number of items(number)

# customer
# -email(string)
# -delivery address(string)
# -name(string)

# credit card
# -number(string)
# -type(symbol)
# -security(string)
# -name(string)
# -expiry date(date)

# cart
# -items(array)
# -total price(decimal)

# order 
# -delivery date(date)
# -total price(decimal)
# -customer(customer)
# -items(array)

# item
# -price(decimal)
# -name (string)

class Shop

attr_reader :items

	def initialize
		@items = []
	end

def number_of_items
	items.count
end
end

class Customer
	def initialize(name,email)
		@name = name
		@email = email
	end

	attr_reader :email
	attr_reader :name
end

class CreditCard
	def initialize(values)
		@number = values[:number]
		@type = values[:type]
		@security_code = values[:security_code]
		@name = values[:name]
		@expiry = values[:expiry]
	end


	attr_reader :number
	attr_reader :type
	attr_reader :security_code
	attr_reader :name
	attr_reader :expiry

end		
	
class Cart
	def initialize
		@items = []
		
	end
	attr_reader :items
end

class Order
	def initialize(cart,customer,delivery_date=Date.today+5)
		@items= cart.items
		@customer = customer
		@delivery_date = delivery_date
    
     end
	
	attr_reader :items
	attr_reader :customer
	attr_reader :delivery_date

end

class Item
	def initialize(price,name)
		@price = price
		@name = name
		
	end

	attr_reader :price
	attr_reader :name
	
end
