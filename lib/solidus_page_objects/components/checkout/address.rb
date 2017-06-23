module SolidusPageObjects
  module Components
    module Checkout
      module Address
        def self.included(base)
          base.element :first_name, input_address_selector('firstname')
          base.element :last_name,  input_address_selector('lastname')
          base.element :address1,   input_address_selector('address1')
          base.element :address2,   input_address_selector('address2')
          base.element :city,       input_address_selector('city')
          base.element :country,    dropdown_address_selector('country_id')
          base.element :state,      dropdown_address_selector('state_id')
          base.element :zipcode,    input_address_selector('zipcode')
          base.element :phone,      input_address_selector('phone')
        end

        def self.input_address_selector(selector)
          address_selector(selector)
        end

        def self.dropdown_address_selector(selector)
          address_selector(selector, input: 'select')
        end

        def self.address_selector(selector, input: 'input')
          raise ArgumentError, 'Selector can\t be blank' if selector.blank?

          "#{input}[name$='_address_attributes][#{selector}]']"
        end
      end
    end
  end
end
