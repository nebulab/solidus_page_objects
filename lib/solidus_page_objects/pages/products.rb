module SolidusPageObjects
  module Pages
    class Products < Layout
      set_url '/products'

      section :sidebar, Sections::Sidebar, '#sidebar'
      section :product_list, Sections::Product::List, '#products'
    end
  end
end
