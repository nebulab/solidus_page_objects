module Solidus
  module PageObjects
    module Sections
      class ProductList < SitePrism::Section
        elements :products,       "[data-hook='products_list_item']"
        elements :product_links,  "[data-hook='products_list_item'] a"
      end
    end
  end
end
