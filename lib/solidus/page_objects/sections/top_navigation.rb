module Solidus
  module PageObjects
    module Sections
      class TopNavigation < SitePrism::Section
        element :login_link, 'ul#nav-bar li#link-to-login a:first'

        section :search, Search, 'ul#nav-bar li#search-bar'
      end
    end
  end
end
