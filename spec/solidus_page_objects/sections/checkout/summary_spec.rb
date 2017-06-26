require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::Checkout::Summary do
  let(:order) { OrderWalkthrough.up_to(:address) }
  let(:user) { create(:user) }

  before do
    order.update_attribute(:user, user)
    allow_any_instance_of(Spree::CheckoutController).to receive_messages current_order: order,
                                                                         spree_current_user: user
  end

  let!(:page) { SolidusPageObjects::Pages::Checkout::Address.new.tap(&:load) }

  subject { page.summary }

  describe '#value_of' do
    it 'return the value_of specific row' do
      expect(subject.value_of('Item Total')).to eq order.display_item_total.to_html
    end
  end
end
