module SolidusPageObjects
  module Components
    module Product
      module List
        def self.included(base)
          base.sections :products, Sections::Product::Preview, '> li'
        end
      end
    end
  end
end
