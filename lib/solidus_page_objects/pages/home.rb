module SolidusPageObjects
  module Pages
    class Home < SitePrism::Page
      set_url '/'

      element :cart_link, 'ul#main-nav-bar li#link-to-cart a:first'
    end
  end
end
