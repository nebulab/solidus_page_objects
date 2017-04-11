require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Cart do
  let(:order) { create(:order_with_line_items) }

  before do
    allow_any_instance_of(Spree::StoreController).to receive_messages(spree_current_user: order.user)
  end

  subject { described_class.new.tap(&:load) }

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(spree.cart_path) }
  it { is_expected.to be_all_there(recursive: true) }
end
