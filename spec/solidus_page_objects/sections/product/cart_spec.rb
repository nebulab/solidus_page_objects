require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::Product::Cart do
  let!(:store) { create(:store) }
  let(:product) { create(:product) }

  let!(:page) { SolidusPageObjects::Pages::Product.new.tap { |page| page.load(slug: product.slug) } }

  subject { page.cart }

  describe '#add_to_cart' do
    before do
      allow(subject).to receive(:quantity).and_return(subject.quantity)
      allow(subject).to receive(:add_to_cart_button).and_return(subject.add_to_cart_button)
    end

    it 'sets the quantity input to 1 when no quantity given' do
      expect(subject.quantity).to receive(:set).with(1)
      subject.add_to_cart
    end

    it 'sets the quantity input by the given quantity' do
      expect(subject.quantity).to receive(:set).with(2)
      subject.add_to_cart(2)
    end

    it 'clicks to add to cart button' do
      expect(subject.add_to_cart_button).to receive(:click)
      subject.add_to_cart
    end
  end
end
