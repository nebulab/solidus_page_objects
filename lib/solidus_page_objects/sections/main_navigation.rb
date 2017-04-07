module SolidusPageObjects
  module Sections
    class MainNavigation < SitePrism::Section
      element :home_page_link, 'li#home-link a'
      element :cart_link,      'li#link-to-cart a'
    end
  end
end
