module SolidusPageObjects
  module Components
    module Order
      module Detail
        def self.included(base)
          base.element :title, 'h6'
          base.element :content, '> div'
          base.element :edit_link, 'h6 a'
        end
      end
    end
  end
end
