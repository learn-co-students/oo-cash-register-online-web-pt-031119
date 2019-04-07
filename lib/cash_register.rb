require "pry"

class CashRegister

attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += (@price * quantity)
    while quantity > 0
      @cart << item
      quantity -= 1
    end
    #binding.pry
  end

  def apply_discount
    if discount > 0
      @total = @total*((100-@discount)/100.0)
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price
    @total
  end

end
