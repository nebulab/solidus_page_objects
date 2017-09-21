require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Checkout::Payment do
  let!(:order) { OrderWalkthrough.up_to(:payment) }
  let(:page_path) { spree.checkout_state_path(:payment) }
  let(:page) { described_class.new }
  subject do
    page.tap { |p| p.load(try(:params) || {}) }
  end

  before do
    order.update_attribute(:user, user)
    allow_any_instance_of(Spree::CheckoutController).to receive_messages current_order: order,
                                                                         spree_current_user: user
  end

  context 'when user has some payment sources in his wallet' do
    let(:user) { create :user, :with_wallet }

    it 'is a payment page with a wallet' do
      is_expected.to be_displayed
      expect(page.has_wallet?).to be true
    end
  end

  context 'when user has an empty wallet' do
    let(:user) { create :user }

    it 'is a payment page without a wallet' do
      is_expected.to be_displayed
      expect(page.has_wallet?).to be false
    end
  end
end
