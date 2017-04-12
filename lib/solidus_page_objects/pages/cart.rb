module SolidusPageObjects
  module Pages
    class Cart < SitePrism::Page
      set_url '/cart'

      section :header, Sections::Header, '#header'
      section :cart, Sections::Cart, '#content'
    end
  end
end
