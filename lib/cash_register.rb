class CashRegister

  attr_accessor :total, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_trans = 0
  end

  def discount
    @discount
  end

  def add_item(title, price)
    # @total += price
    self.total += price * quantity
    self.last_trans = self.total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    self.total -= self.discount*10
    "After the discount, the total comes to $#{self.total}."
  end

  def items
    @item
  end

  def void_last_transaction(price, quantity)
    #self.total -= self.trans
    self.last_trans -= (price * quantity)
    self.total -= self.last_trans
  end



end 
