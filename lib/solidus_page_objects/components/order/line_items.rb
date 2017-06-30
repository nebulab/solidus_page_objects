module SolidusPageObjects
  module Components
    module Order
      module LineItems
        def self.included(base)
          base.sections :line_item, Sections::Order::LineItem, 'tbody tr[data-hook="order_details_line_item_row"]'

          base.element :subtotal, '#subtotal .total:first-child span'
          base.element :shipping, '#shipment-total .total:first-child span'
          base.element :total, '#order-total #order_total'
        end
      end
    end
  end
end
