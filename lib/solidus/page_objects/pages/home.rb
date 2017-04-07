module Solidus
  module PageObjects
    module Pages
      class Home < SitePrism::Page
        set_url '/'

        section :top_navigation, Sections::TopNavigation, 'nav#top-nav-bar'
        element :cart_link, 'ul#main-nav-bar li#link-to-cart a:first'
      end
    end
  end
end
