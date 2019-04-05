require 'pry'
class CashRegister

  attr_accessor :total, :discount

   def initialize(total = 0)
     @total = total
     @discount = total.round
   end

   def total
     @total
   end

   def add_item(title, price, quantity)

   end

   def apply_discount
    #  if
    #   #  return "After the discount, the total comes to #{total}."
    #  else
    #    return " There is no discount to apply."
    #  end
   end

   def items
   end

   def void_last_transaction
   end

end
