module SolidusPageObjects
  module Sections
    module Checkout
      class Address < SitePrism::Section
        include Components::Checkout::Address
      end
    end
  end
end
