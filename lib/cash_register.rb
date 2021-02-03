
require 'pry'
class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    end   
    
   def total
    @total 
   end
  
   def add_item(title, price, quantity=1)
   self.total += price * quantity
    @items.fill(title, @items.size,quantity) 
    self.last_transaction = price * quantity
   end 

   def apply_discount 
   if discount == 0
    "There is no discount to apply."
   else
   final_discount = self.total * discount/100
   @total = self.total - final_discount
    "After the discount, the total comes to $#{@total}."
   end
   end 

   def items
   @items 
   end 

   def void_last_transaction
   self.total = self.total - self.last_transaction
   end 

end   

mary = CashRegister.new
mary.add_item("book", 10, 2)
mary.add_item("stamp",2,)


#binding.pry 
0