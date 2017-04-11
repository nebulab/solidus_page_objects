module SolidusPageObjects
  module Components
    module TaxonList
      def self.included(base)
        base.elements :taxons, '> li'
      end
    end
  end
end
