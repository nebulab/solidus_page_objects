module SolidusPageObjects
  module Components
    module Taxonomies
      def self.included(base)
        base.elements :titles, '.taxonomy-root'
        base.sections :taxon_lists, Sections::TaxonList, '.taxons-list'
      end
    end
  end
end
