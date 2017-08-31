module SolidusPageObjects
  module Pages
    module Checkout
      class Payment < SitePrism::Page
        include Components::Checkout

        set_url '/checkout/payment'

        section :header, Sections::Header, '#header'

        section :payment, Sections::Checkout::Payment, '#checkout_form_payment'
      end
    end
  end
end
