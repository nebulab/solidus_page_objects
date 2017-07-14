module SolidusPageObjects
  module Components
    module CouponCode
      def self.included(base)
        base.element :input, "input[name='order[coupon_code]']"

        if Gem::Version.new(Spree.try(:solidus_version) || '1.1') >= Gem::Version.new('1.4')
          base.element :apply_button, "button:first"
        end
      end

      def apply(code)
        input.set(code)
        if Gem::Version.new(Spree.try(:solidus_version) || '1.1') >= Gem::Version.new('1.4')
          apply_button.click
        end
      end
    end
  end
end
