module SolidusPageObjects
  module Pages
    class Cart < SitePrism::Page
      set_url '/cart'

      section :header, Sections::Header, '#header'
    end
  end
end
