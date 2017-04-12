module SolidusPageObjects
  module Components
    module Product
      def self.included(base)
        base.element :title, "#product-description .product-title"
        base.element :description, "#product-description > div:first"
        base.element :price, "#product-description #product-price"
      end
    end
  end
end
