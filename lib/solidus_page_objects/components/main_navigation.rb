module SolidusPageObjects
  module Components
    module MainNavigation
      def self.included(base)
        base.element :home_page_link, 'li#home-link a'
        base.element :cart_link,      'li#link-to-cart a'
      end
    end
  end
end
