module SolidusPageObjects
  module Pages
    class Cart < Layout
      set_url '/cart'

      section :cart, Sections::Cart, '#content'
    end
  end
end
