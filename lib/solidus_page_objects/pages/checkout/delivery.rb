module SolidusPageObjects
  module Pages
    module Checkout
      class Delivery < SitePrism::Page
        set_url '/checkout/delivery'

        section :header, Sections::Header, '#header'
        section :delivery, Sections::Checkout::Delivery, '#checkout_form_delivery'
      end
    end
  end
end
