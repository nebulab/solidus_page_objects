module SolidusPageObjects
  module Pages
    module Checkout
      class Address < SitePrism::Page
        include Components::Checkout

        set_url '/checkout/address'

        section :header, Sections::Header, '#header'
      end
    end
  end
end
