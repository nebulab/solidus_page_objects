module SolidusPageObjects
  module Pages
    module Checkout
      class Payment < Layout
        include Components::Checkout

        set_url '/checkout/payment'

        section :payment, Sections::Checkout::Payment, '#checkout_form_payment'
      end
    end
  end
end
