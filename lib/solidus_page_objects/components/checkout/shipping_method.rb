module SolidusPageObjects
  module Components
    module Checkout
      module ShippingMethod
        def self.included(base)
          base.element :input_radio, 'input'
          base.element :name, '.rate-name'
          base.element :price, '.rate-cost'
        end
      end
    end
  end
end
