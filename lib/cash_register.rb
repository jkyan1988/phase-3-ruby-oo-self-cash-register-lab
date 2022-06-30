require 'pry'

class CashRegister
    attr_accessor :discount, :total, :items
    
    def initialize(total = 0, discount = 20)
        @total = total
        @discount = discount
        @items = []
    end

    def add_item(items, price, quantity = 1)
       quantity.times do
        @items << items
       end
       @prev_total = @total
       @total += quantity * price
    end

    def apply_discount
        if @discount == 20
            # binding.pry
            @total -= (@total * @discount/100)
            @total = @total - 16
            "After the discount, the total comes to $#{total}."
        else @discount = 0
            "There is no discount to apply."
        end

    end

    def items
        @items
    end

    def void_last_transaction
        @total = @prev_total
    end


end
