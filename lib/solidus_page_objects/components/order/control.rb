module SolidusPageObjects
  module Components
    module Order
      module Control
        def self.included(base)
          base.element :view_store_link, 'a.button:first-child'
          base.element :my_account_link, 'a.button:last-child'
        end
      end
    end
  end
end
