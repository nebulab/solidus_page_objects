module SolidusPageObjects
  module Pages
    module Checkout
      class Address < SitePrism::Page
        include Components::Checkout

        set_url '/checkout/address'

        section :header, Sections::Header, '#header'

        section :customer_information, Sections::Checkout::CustomerInformation, '#checkout_form_address'

        def fill_address(address, use_billing = false)
          customer_information.use_billing_address.set use_billing
          fill_billing_address address
          fill_shipping_address address unless use_billing_address?
        end

        %w(billing shipping).each do |meth|
          define_method "#{meth}_address" do
            customer_information.send meth
          end
        end

        def use_billing_address?
          customer_information.use_billing_address.checked?
        end

        def fill_billing_address(address)
          fill_with address, :billing
        end

        def fill_shipping_address(address)
          fill_with address, :shipping
        end

        def fill_with(address, address_type)
          customer_information.send(address_type).first_name.set(address.firstname)
          customer_information.send(address_type).last_name.set(address.lastname)
          customer_information.send(address_type).address1.set(address.address1)
          customer_information.send(address_type).city.set(address.city)
          customer_information.send(address_type).country.set(address.country_id)
          customer_information.send(address_type).state.set(address.state_id) if Spree::Config[:address_requires_state] && address.country.states_required?
          customer_information.send(address_type).zipcode.set(address.zipcode)
          customer_information.send(address_type).phone.set(address.phone)
        end
      end
    end
  end
end
