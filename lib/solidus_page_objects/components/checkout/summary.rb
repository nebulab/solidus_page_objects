module SolidusPageObjects
  module Components
    module Checkout
      module Summary
        def self.included(base)
          base.element :table, 'table'
        end

        def value_of(header)
          tr = table.find('tbody tr', text: header)
          tr.find_all('td')[1].text if tr.present?
        end
      end
    end
  end
end
