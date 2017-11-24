module SolidusPageObjects
  module Pages
    class Home < Layout
      set_url '/'

      section :sidebar, Sections::Sidebar, '#sidebar'
      section :product_list, Sections::Product::List, '#products'
    end
  end
end
