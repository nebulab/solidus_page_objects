module SolidusPageObjects
  module Pages
    module Checkout
      class Confirm < SitePrism::Page
        set_url '/checkout/confirm'

        section :header, Sections::Header, '#header'

        section :confirm, Sections::Checkout::Confirm, '#checkout_form_confirm'

        section :control, SolidusPageObjects::Sections::Checkout::Control, '.form-buttons'
      end
    end
  end
end
