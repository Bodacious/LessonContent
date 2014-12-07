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

  
  attr_reader :email
  attr_reader :name


  def initialize(name,email)
    @name = name
    @email = email
  end

end

class CreditCard


  attr_reader :number
  attr_reader :type
  attr_reader :security_code
  attr_reader :name
  attr_reader :expiry

  
  def initialize(values)
    @number        = values[:number]
    @type          = values[:type]
    @security_code = values[:security_code]
    @name          = values[:name]
    @expiry        = values[:expiry]
  end

end		
	
class Cart
  
  
  attr_reader :items
  
  
  def initialize
    @items = []	
  end
    
end

class Order
  
  attr_reader :items
  attr_reader :customer
  attr_reader :delivery_date

  
  def initialize(cart,customer,delivery_date=Date.today+5)
    @items         = cart.items
    @customer      = customer
    @delivery_date = delivery_date    
  end
	
end

class Item
  
  attr_reader :price
  attr_reader :name

  
  def initialize(price,name)
    @price = price
    @name  = name		
  end

end