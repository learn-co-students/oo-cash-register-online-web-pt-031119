class CashRegister
  attr_accessor :total, :add_item, :apply_discount, :items  
  
  def initialize (total = 0)
  @total = total
  end 
  def cash_register_with_discount
    apply_discount = @total *0.20
end 
