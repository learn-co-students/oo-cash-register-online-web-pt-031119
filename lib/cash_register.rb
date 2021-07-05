require 'pry'

class CashRegister 
  
  attr_accessor :total, :discount, :price, :items, :last_trans
  
  def initialize(discount=0)
    @total = 0
    @last_trans = 0
    @discount = discount 
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price 
    @item = item 
    self.total += price * quantity
    self.last_trans = self.total 
    
    quantity.times do 
      @items << item 
    end 
  end
  
  
  def apply_discount 
    self.total -= self.discount*10
    if self.discount > 0 
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def void_last_transaction 
    self.total-= self.last_trans
  end 
  
end
