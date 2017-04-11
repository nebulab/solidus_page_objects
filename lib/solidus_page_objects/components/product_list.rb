module SolidusPageObjects
  module Components
    module ProductList
      def self.included(base)
        base.sections :products, Sections::ProductPreview, '> li'
      end
    end
  end
end
