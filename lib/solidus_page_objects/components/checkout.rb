module SolidusPageObjects
  module Components
    module Checkout
      def self.included(base)
        base.section :summary, SolidusPageObjects::Sections::Checkout::Summary, '#checkout-summary'
      end
    end
  end
end
