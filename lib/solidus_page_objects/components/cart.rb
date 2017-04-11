module SolidusPageObjects
  module Components
    module Cart
      def self.included(base)
        base.sections :items, Sections::CartItem, '.line-item'

        base.element :cart_total, ".cart-total"

        base.element :empty_cart_button, "#empty-cart input[type='submit']"
        base.element :continue_shopping_link, "#empty-cart a.continue"

        base.element :coupon_code_input, "#order_coupon_code"
        base.element :update_button, "#update-button"
        base.element :checkout_link, "#checkout-link"
      end

      def apply_coupon_code(code)
        coupon_code_input.set(code)
        update_button.click
        Pages::Cart.new
      end

      def update_quantity_for_item(index, quantity:)
        items[index].quantity_input.set(quantity)
        update_button.click
        Pages::Cart.new
      end

      def delete_item(index)
        items[index].delete
      end
    end
  end
end
