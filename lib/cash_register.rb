require 'pry'

class CashRegister
  attr_accessor :items, :total, :discount, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    self.last_transaction = self.total
    
    quantity.times do
      @items << title
    end
    
    # while quantity > 0
    #   @items << title
    #   quantity -= 1
    # end
  end
  
  def apply_discount
    @total = @total - (@discount * 10)
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
    # binding.pry
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    # @last_transaction = price * quantity
    @total -= @last_transaction
  end
  
end
