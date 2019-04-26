class CashRegister
attr_accessor :total

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end


def discount
  @discount
end

def add_item(title,price, quantity=1)
  @quantity = quantity
  @total += price*quantity
  @previoustotal = @total

num = 0
  while num < quantity
    @items << title
    num += 1
  end
end

def apply_discount
discountamount = @total*@discount/100
@total = @total - discountamount
if discountamount == 0
  @message="There is no discount to apply."
else
  @message = "After the discount, the total comes to $#{@total}."
end
end

def items
  @items
end

def void_last_transaction
  @total = @total - @previoustotal
end


end
