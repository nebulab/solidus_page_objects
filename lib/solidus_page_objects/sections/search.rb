module SolidusPageObjects
  module Sections
    class Search < SitePrism::Section
      element :taxon_select, "select[name='taxon']"
      element :search_input, "input[name='keywords']"

      element :search_button, "input[type='submit']"

      def search_for(query, scope = 'All departments')
        search_input.set query
        taxon_select.select scope
        search_button.click
        Pages::Products.new
      end
    end
  end
end
