module SolidusPageObjects
  module Components
    module Checkout
      module Payment
        def self.included(base)
          base.sections :payment_methods, Sections::Checkout::PaymentMethod, '#payment-method-fields p'
          base.section :coupon_code, Sections::CouponCode, 'p[data-hook="coupon_code"]'
        end
      end
    end
  end
end
