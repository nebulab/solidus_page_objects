module SolidusPageObjects
  module Components
    module Product
      module SimilarItem
        def self.included(base)
          base.element :link, 'a'
        end
      end
    end
  end
end
