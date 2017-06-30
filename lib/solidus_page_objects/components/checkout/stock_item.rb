module SolidusPageObjects
  module Components
    module Checkout
      module StockItem
        def self.included(base)
          base.element :image, '.item-image img'
          base.element :name, '.item-name'
          base.element :quantity, '.item-qty'
          base.element :price, '.item-price'
        end
      end
    end
  end
end
