module SolidusPageObjects
  module Components
    module Checkout
      def self.included(base)
        base.section :summary, SolidusPageObjects::Sections::Checkout::Summary, '#checkout-summary'

        base.section :control, SolidusPageObjects::Sections::Checkout::Control, '.form-buttons'
      end
    end
  end
end
