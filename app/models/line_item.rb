class LineItem < ActiveRecord::Base
    belongs_to :oreder
    belongs_to :product
    belongs_to :cart
    
    def total_price
        product.price * quantity
    end
end
