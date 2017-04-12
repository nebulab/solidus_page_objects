module SolidusPageObjects
  module Components
    module Product
      def self.included(base)
        base.element :title, "#product-description .product-title"
        base.element :description, "#product-description > div:first"
        base.element :price, "#product-description #product-price"

        base.section :images, Sections::ProductImages, "#product-images"
        base.sections :properties, Sections::Property, "#product-properties tr"
      end
    end
  end
end
