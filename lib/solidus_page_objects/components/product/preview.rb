module SolidusPageObjects
  module Components
    module Product
      module Preview
        def self.included(base)
          base.element :image, '.product-image'
          base.element :name, '.info'
          base.element :price, '.price'
        end
      end
    end
  end
end
