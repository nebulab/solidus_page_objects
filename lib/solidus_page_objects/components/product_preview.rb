module SolidusPageObjects
  module Components
    module ProductPreview
      def self.included(base)
        base.element :image, '.product-image'
        base.element :name, '.info'
        base.element :price, '.price'
      end
    end
  end
end
