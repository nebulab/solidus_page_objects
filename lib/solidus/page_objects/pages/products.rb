module Solidus
  module PageObjects
    module Pages
      class Products < SitePrism::Page
        set_url '/products'

        section :product_list, Sections::ProductList, 'div[data-hook=search_results],div[data-hook=homepage_products]'
      end
    end
  end
end
