module SolidusPageObjects
  module Components
    module CartItem
      def self.included(base)
        base.element :image, ".cart-item-image img"
        base.element :title, ".cart-item-description a"
        base.element :description, "span.cart-item-description"
        base.element :price, ".cart-item-price"
        base.element :quantity_input, ".line_item_quantity"
        base.element :total, ".cart-item-total"
        base.element :delete_link, ".cart-item-delete > a"
      end

      def delete
        delete_link.click
        Pages::Cart.new
      end
    end
  end
end
