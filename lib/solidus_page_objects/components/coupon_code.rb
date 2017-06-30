module SolidusPageObjects
  module Components
    module CouponCode
      def self.included(base)
        base.element :input, "input[name='order[coupon_code]']"
        base.element :apply_button, "button:first"
      end

      def apply(code)
        input.set(code)
        apply_button.click
      end
    end
  end
end
