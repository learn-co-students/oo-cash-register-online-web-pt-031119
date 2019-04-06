require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items_array, :title, :price, :quantity

   def initialize(discount = 0)
     @total = 0
     @discount = discount
     @items_array = []

   end

   def add_item(title, price, quantity = 1)
     @title = title
     @price = price
     @quantity = quantity

     @quantity.times do
       @items_array << @title
     end
     @total += @price * @quantity
   end

   def apply_discount
     if @discount == 0
       return "There is no discount to apply."
     else
       @total -= @total * @discount / 100
       return "After the discount, the total comes to $#{@total}."
     end
   end

   def items
     @items_array
   end

   def void_last_transaction
     @total -= @price * @quantity
   end

end
