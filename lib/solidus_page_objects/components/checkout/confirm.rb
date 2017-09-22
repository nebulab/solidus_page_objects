module SolidusPageObjects
  module Components
    module Checkout
      module Confirm
        def self.included(base)
          base.section :order_details, Sections::Order::Details, '#order_details .steps-data'
        end
      end
    end
  end
end
