require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Checkout::Address, type: :feature, js: true do
  let(:order) { create(:order_with_line_items) }
  let(:user) { create(:user) }

  before do
    order.update_attribute(:user, user)
    allow_any_instance_of(Spree::CheckoutController).to receive_messages current_order: order,
                                                                         spree_current_user: user
  end

  it_behaves_like 'a page' do
    let(:page_path) { spree.checkout_state_path(:address) }
  end
end
