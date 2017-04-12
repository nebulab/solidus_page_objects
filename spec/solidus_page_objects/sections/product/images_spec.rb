require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::Product::Images do
  let(:product) do
    create(:product).tap do |product|
      product.images << create(:image)
      product.images << create(:image)
    end
  end

  let!(:page) { SolidusPageObjects::Pages::Product.new.tap { |page| page.load(slug: product.slug) } }

  subject { page.images }

  describe '#select_image' do
    before { allow(subject).to receive(:thumbnails).and_return(subject.thumbnails) }

    it 'clicks to the first thumbnails when no index given' do
      expect(subject.thumbnails.first).to receive(:click)
      subject.select_image
    end

    it 'clicks to the thumbnails by index' do
      expect(subject.thumbnails[1]).to receive(:click)
      subject.select_image(1)
    end
  end
end
