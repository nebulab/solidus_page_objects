module SolidusPageObjects
  module Components
    module Product
      module Cart
        def self.included(base)
          base.element :quantity, 'quantity'
          base.element :add_to_cart_button, '#add-to-cart-button'
        end
      end
    end
  end
end
