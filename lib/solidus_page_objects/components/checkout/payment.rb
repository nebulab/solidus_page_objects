module SolidusPageObjects
  module Components
    module Checkout
      module Payment
        def self.included(base)
          base.sections :payment_methods, Sections::Checkout::PaymentMethod, '#payment-method-fields p'
        end
      end
    end
  end
end
