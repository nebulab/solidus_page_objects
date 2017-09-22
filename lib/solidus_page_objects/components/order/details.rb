module SolidusPageObjects
  module Components
    module Order
      module Details
        def self.included(base)
          base.section :bill_address, Sections::Order::Detail, 'div[data-hook="order-bill-address"]'
          base.section :ship_address, Sections::Order::Detail, 'div[data-hook="order-ship-address"]'
          base.section :shipments, Sections::Order::Detail, 'div[data-hook="order-shipment"]'
          base.section :payments, Sections::Order::Detail, '.omega'
        end
      end
    end
  end
end
