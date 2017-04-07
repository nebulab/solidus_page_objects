module SolidusPageObjects
  module Sections
    class Header < SitePrism::Section
      section :search, Search, '#search-bar'
      section :main_navigation, MainNavigation, '#main-nav-bar'
    end
  end
end
