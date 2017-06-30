module SolidusPageObjects
  module Components
    module Checkout
      module ShippingMethod
        def self.included(base)
          base.element :input_radio, 'input'
          base.element :name, '.rate-name'
          base.element :price, '.rate-cost'
        end

        def select
          input_radio.click
        end
      end
    end
  end
end
