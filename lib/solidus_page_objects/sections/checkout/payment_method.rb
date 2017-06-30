module SolidusPageObjects
  module Sections
    module Checkout
      class PaymentMethod < SitePrism::Section
        include Components::Checkout::PaymentMethod
      end
    end
  end
end
