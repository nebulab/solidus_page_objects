module SolidusPageObjects
  module Components
    module Sidebar
      def self.included(base)
        base.section :taxonomies, Sections::Taxonomies, '#taxonomies'
      end
    end
  end
end
