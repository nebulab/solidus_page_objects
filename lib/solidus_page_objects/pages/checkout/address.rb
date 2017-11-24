module SolidusPageObjects
  module Pages
    module Checkout
      class Address < Layout
        include Components::Checkout

        set_url '/checkout/address'

        section :customer_information, Sections::Checkout::CustomerInformation, '#checkout_form_address'
      end
    end
  end
end
