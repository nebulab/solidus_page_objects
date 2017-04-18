module SolidusPageObjects
  module Components
    module Checkout
      module Control
        def self.included(base)
          base.element :next_button, 'input[type=submit]'
        end

        def next!
          next_button.click
        end
      end
    end
  end
end
