require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :quantity, :items, :last_price

  def initialize(discount=0)
    @total = 0.to_f
    @discount = discount.to_f
    @items = []
  end

  def add_item(item, price, quantity=1)
    quantity.times {self.items << item}
    self.total = self.total + (price * quantity)
    @last_price = price * quantity
  end

  def apply_discount
    if self.discount != 0
      perc_disc = ((100-self.discount)/100)
      self.total = self.total * perc_disc
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - @last_price
  end

end
