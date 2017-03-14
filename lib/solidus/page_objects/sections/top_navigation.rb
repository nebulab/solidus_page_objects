module Solidus
  module PageObjects
    module Sections
      class TopNavigation < SitePrism::Section
        element :login_link, 'ul#nav-bar li#link-to-login a:first'
      end
    end
  end
end
