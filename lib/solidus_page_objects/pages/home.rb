module SolidusPageObjects
  module Pages
    class Home < SitePrism::Page
      set_url '/'

      section :header, Sections::Header, '#header'
      section :product_list, Sections::ProductList, '#products'
    end
  end
end
