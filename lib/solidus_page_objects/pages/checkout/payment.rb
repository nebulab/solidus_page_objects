module SolidusPageObjects
  module Pages
    module Checkout
      class Payment < SitePrism::Page
        include Components::Checkout

        set_url '/checkout/payment'

        section :header, Sections::Header, '#header'

        section :payment, Sections::Checkout::Payment, '#checkout_form_payment'

        element :use_existing_card, 'input#use_existing_card_yes'
        element :dont_use_existing_card, 'input#use_existing_card_no'
        elements :wallet_sources, '#existing_cards input[type="radio"][name="order[wallet_payment_source_id]"]'

        def has_wallet?
          has_css?('input#use_existing_card_yes')
        end

        def use_payment_method(index)
          use_existing_card.set false if has_wallet?
          payment.payment_methods[index].select
        end

        def use_wallet_source(index)
          return unless has_wallet?
          use_existing_card.set true
          wallet_sources[index].set true
        end

        private

        def payment_method_field(index, attribute)
          payment.payment_methods[index].find "input[name$='[#{attribute}]']"
        end

        def fill(index, params = {})
          dont_use_existing_card.set true if has_dont_use_existing_card?
          params.each do |attr, value|
            payment_method_field(index, attr).set value
          end
          payment.payment_methods[index].select
        end
      end
    end
  end
end
