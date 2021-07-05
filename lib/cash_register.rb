class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    @items << title 
    self.last_transaction = self.total
  end
  end
  def apply_discount
    
    @total = @total - @discount * 10
    if @discount > 10
   "After the discount, the total comes to $#{@total}." 
    else 
   "There is no discount to apply."
    end
  end
  def items
    @items
end
  def void_last_transaction
    @last_transaction 
    @total -= last_transaction
 end
  
end
