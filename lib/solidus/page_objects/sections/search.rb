module Solidus
  module PageObjects
    module Sections
      class Search < SitePrism::Section
        element :taxon_select, "select[name='taxon']"
        element :search_input, "input[name='keywords']"

        element :search_button, "input[type='submit']"

        def search_for(query, scope = 'All departments')
          search_input.set query

          taxon_select.select scope

          click_on('Search')

          Pages::Products.new
        end
      end
    end
  end
end
