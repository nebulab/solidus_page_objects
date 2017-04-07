module SolidusPageObjects
  module Sections
    class Search < SitePrism::Section
      element :taxon_select, "select[name='taxon']"
      element :search_input, "input[name='keywords']"

      element :search_button, "input[type='submit']"
    end
  end
end
