module SolidusPageObjects
  module Components
    module Checkout
      module PaymentMethod
        def self.included(base)
          base.element :input_radio, 'input'
          base.element :name, 'label'
        end

        def select
          input_radio.click
        end
      end
    end
  end
end
