module SolidusPageObjects
  module Components
    module Order
      module LineItem
        def self.included(base)
          base.element :image, "td[data-hook='order_item_image'] img"
          base.element :description, "td[data-hook='order_item_description']"
          base.element :price, "td[data-hook='order_item_price'] span"
          base.element :quantity, "td[data-hook='order_item_qty']"
          base.element :total, "td[data-hook='order_item_total'] span"
        end
      end
    end
  end
end
