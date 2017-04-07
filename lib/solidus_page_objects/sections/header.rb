module SolidusPageObjects
  module Sections
    class Header < SitePrism::Section
      section :main_navigation, MainNavigation, '#main-nav-bar'
    end
  end
end
