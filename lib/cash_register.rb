require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :discount, :items

  @@transactions = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items << title
    end
    self.total += price * quantity
    @@transactions << price * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total -= self.total * 0.01 * self.discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @@transactions.pop
  end

end
