module SolidusPageObjects
  module Components
    module Property
      def self.included(base)
        base.element :name,  'td:first'
        base.element :value, 'td:last'
      end
    end
  end
end
