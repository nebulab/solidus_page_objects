module SolidusPageObjects
  module Components
    module Product
      module Property
        def self.included(base)
          base.element :name,  'td:first'
          base.element :value, 'td:last'
        end
      end
    end
  end
end
