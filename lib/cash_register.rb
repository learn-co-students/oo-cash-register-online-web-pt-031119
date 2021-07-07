class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @@all = []

  end

  def discount
    @discount = 20.0
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    @total += price * quantity
    quantity.times {@@all << title}
    
    
  end

  def apply_discount
    discountPercent = @discount/100.0
    priceDeduction = @total * discountPercent
    @total = @total - priceDeduction
    if @discount==0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total -= @total
  end

  
end
