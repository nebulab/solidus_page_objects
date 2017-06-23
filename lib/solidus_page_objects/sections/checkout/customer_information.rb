module SolidusPageObjects
  module Sections
    module Checkout
      class CustomerInformation < SitePrism::Section
        element :order_email,         '#order_email'
        element :use_billing_address, '#order_use_billing'
        element :save_user_address,   '#save_user_address'

        section :billing, Sections::Checkout::Address, '#billing'
        section :shipping, Sections::Checkout::Address, '#shipping'
      end
    end
  end
end
