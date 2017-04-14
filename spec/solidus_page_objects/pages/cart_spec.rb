require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Cart do
  let(:order) { create(:order_with_line_items) }

  before do
    allow_any_instance_of(Spree::StoreController).to receive_messages(spree_current_user: order.user)
  end

  it_behaves_like 'a page' do
    let(:page_path) { spree.cart_path }
  end
end
