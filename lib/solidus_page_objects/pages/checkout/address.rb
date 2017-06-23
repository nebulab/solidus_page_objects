module SolidusPageObjects
  module Pages
    module Checkout
      class Address < SitePrism::Page
        include Components::Checkout

        set_url '/checkout/address'

        section :header, Sections::Header, '#header'

        section :customer_information, Sections::Checkout::CustomerInformation, '#checkout_form_address'
      end
    end
  end
end
