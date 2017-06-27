require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::Checkout::Control do
  let(:order) { OrderWalkthrough.up_to(:address) }
  let(:user) { create(:user) }

  before do
    order.update_attribute(:user, user)
    allow_any_instance_of(Spree::CheckoutController).to receive_messages current_order: order,
                                                                         spree_current_user: user
  end

  let!(:page) { SolidusPageObjects::Pages::Checkout::Address.new.tap(&:load) }

  subject { page.control }

  describe '#next!' do
    before do
      allow(subject).to receive(:next_button).and_return(subject.next_button)
    end

    it 'click to next! button' do
      expect(subject.next_button).to receive(:click)
      subject.next!
    end
  end
end
