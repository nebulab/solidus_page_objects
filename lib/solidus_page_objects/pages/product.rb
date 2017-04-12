module SolidusPageObjects
  module Pages
    class Product < SitePrism::Page
      set_url "/products{/slug}"

      section :header, Sections::Header, '#header'
      section :product, Sections::Product, '#content'
    end
  end
end
