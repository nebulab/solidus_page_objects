require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::Checkout::PaymentMethod do
  let(:order) { OrderWalkthrough.up_to(:payment) }
  let(:user) { create(:user) }

  before do
    order.update_attribute(:user, user)
    allow_any_instance_of(Spree::CheckoutController).to receive_messages current_order: order,
                                                                         spree_current_user: user
  end

  let!(:page) { SolidusPageObjects::Pages::Checkout::Payment.new.tap(&:load) }

  subject { page.payment.payment_methods.first }

  describe '#select' do
    before do
      allow(subject).to receive(:input_radio).and_return(subject.input_radio)
    end

    it 'clicks to radio input button' do
      expect(subject.input_radio).to receive(:click)
      subject.select
    end
  end
end
