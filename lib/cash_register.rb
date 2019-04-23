require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount=0)
    @total=0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    self.last_transaction = self.total
   # quantity.times do
    #@items << title 
  #end
 # end
    while quantity > 0  #while quantity > 0, keep shovelling title until quantity = 0 #
  @items << title 
  quantity -= 1 
    end
  end
  
  def apply_discount
    if discount > 0
    "After the discount, the total comes to $#{ @total -= @discount * 10 }."
    else 
    "There is no discount to apply."
    end
  end
  
  def void_last_transaction
     self.total = self.total - self.last_transaction
  end
  
end
