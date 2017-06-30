require 'spec_helper'

RSpec.describe SolidusPageObjects::Components::CouponCode do
  let(:order) { create(:order_with_line_items) }
  let(:page) { SolidusPageObjects::Pages::Cart.new.tap(&:load) }

  before do
    allow_any_instance_of(Spree::StoreController).to receive_messages(spree_current_user: order.user)
  end

  subject { page.cart.coupon_code }

  describe '#apply' do
    before do
      allow(subject).to receive(:input).and_return(subject.input)
      allow(subject).to receive(:apply_button).and_return(subject.apply_button)
    end

    after do
      subject.apply('123')
    end

    it 'sets coupon code input' do
      expect(subject.input).to receive(:set).with('123')
    end

    it 'click to apply coupon button' do
      expect(subject.apply_button).to receive(:click)
    end
  end
end
