class CashRegister
  
  attr_accessor :total, :discount, :last_item
  
  
  def initialize(discount = 0)  
    @total = 0
    @discount = discount # only necessary for test 
     @cart=[]
  end
  
  def add_item(title,price, quantity=1)
     self.total += (price * quantity)
    
     while quantity > 0
     @cart << title
     quantity -= 1
     end
   end

  def apply_discount
    if discount > 0
    "After the discount, the total comes to $#{self.total= total-(total * discount/100) }."
  else 
  "There is no discount to apply."
end
  end

def items
  @cart
end

def void_last_transaction(price, quantity-1)
  @last_item = price * quantity
  @total -= @last_item
  
end

end

