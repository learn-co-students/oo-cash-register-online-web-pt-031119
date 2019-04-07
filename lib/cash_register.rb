require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :cart
  
def initialize(discount=0)
     @total = 0
     @discount = discount
     @cart = []
end  


def add_item(title,price,quantity=1)
  @price = price
  @total += price * quantity
  while quantity > 0 
    @cart  << title 
    quantity -= 1
  end
end
  
def apply_discount
  if @discount == 0
   "There is no discount to apply."
   else
    @total = @total * ((100 -discount) * 0.01)
    "After the discount, the total comes to $#{@total.round}."
   end
end
  
def items 
  #binding.pry
  @cart
end
  
  
def void_last_transaction
  @total = @total - @price
end
  
  
end








