module SolidusPageObjects
  module Pages
    class Home < SitePrism::Page
      set_url '/'

      section :header, Sections::Header, '#header'
      section :sidebar, Sections::Sidebar, '#sidebar'
      section :product_list, Sections::Product::List, '#products'
    end
  end
end
