module SolidusPageObjects
  module Pages
    module Checkout
      class Delivery < Layout
        include Components::Checkout

        set_url '/checkout/delivery'

        section :delivery, Sections::Checkout::Delivery, '#checkout_form_delivery'
      end
    end
  end
end
