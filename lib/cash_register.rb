require 'pry'


class CashRegister

  attr_accessor :total, :discount, :last_trans 

  def initialize(discount = 0) 
    @total = 0 
    #binding.pry 
    @discount = discount
    @last_trans = 0
    @items = [] 

  end 

  # def discount
  #   @discount 
  # end 

  # def total
  #   @total
  # end 

  def add_item (item, price, quantity = 1)    
    self.total += price * quantity
    self.last_trans = self.total 
    while quantity > 0
      @items << item
      quantity -= 1
    end  
    #binding.pry 
  end

  # quantity.times do
  #   @items << item

  
  
  def apply_discount
    self.total = self.total - @discount * 10
    if @discount > 0    
    #binding.pry  
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply." 
    end 
  end
  
  def items 
    @items 
  end 

  def void_last_transaction
    self.total -= self.last_trans
  end 

end 
