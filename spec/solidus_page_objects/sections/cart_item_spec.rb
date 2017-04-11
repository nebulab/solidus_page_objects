require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::CartItem do
  let(:order) { create(:order_with_line_items) }
  let(:page) { SolidusPageObjects::Pages::Cart.new.tap(&:load) }

  before do
    allow_any_instance_of(Spree::StoreController).to receive_messages(spree_current_user: order.user)
  end

  describe '#delete' do
    subject { page.cart.cart_items.first.delete }

    it { is_expected.to be_a(SolidusPageObjects::Pages::Cart) }
  end
end
