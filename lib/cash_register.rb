require "pry"

class CashRegister
  attr_accessor :total, :last_trans
  attr_reader :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    #self.last_trans = self.total
    #quantity.times do
     # @items << title
      #quantity -= 1
      while quantity > 0
      @items << title
      quantity -= 1
  end
end

def apply_discount
    if @discount > 0
    "After the discount, the total comes to $#{ @total -= @discount * 10 }."
  else 
    "There is no discount to apply."
end
end

def items
    @items
end

def void_last_transaction #(price, quantity=1)
  #@last_trans = price * quanity
  #@total -= @last_trans
  @total = 0
end




end