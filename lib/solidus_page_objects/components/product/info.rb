module SolidusPageObjects
  module Components
    module Product
      module Info
        def self.included(base)
          base.element :title, ".product-title"
          base.element :description, "> div:first"
          base.element :price, "#product-price"
        end
      end
    end
  end
end
