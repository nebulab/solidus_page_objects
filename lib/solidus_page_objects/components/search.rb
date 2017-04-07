module SolidusPageObjects
  module Components
    module Search
      def self.included(base)
        base.element :taxon_select, "select[name='taxon']"
        base.element :search_input, "input[name='keywords']"

        base.element :search_button, "input[type='submit']"
      end

      def search_for(query, scope = 'All departments')
        search_input.set query
        taxon_select.select scope
        search_button.click
        Pages::Products.new
      end
    end
  end
end
