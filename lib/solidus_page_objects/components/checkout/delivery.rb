module SolidusPageObjects
  module Components
    module Checkout
      module Delivery
        def self.included(base)
          base.sections :stock_items, Sections::Checkout::StockItem, '.stock-item'
          base.sections :shipping_methods, Sections::Checkout::ShippingMethod, '.shipping-method'
        end
      end
    end
  end
end
