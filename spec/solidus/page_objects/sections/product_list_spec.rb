require 'spec_helper'

RSpec.describe Solidus::PageObjects::Sections::ProductList do
  let(:page) { Solidus::PageObjects::Pages::Products.new.tap(&:load) }

  subject { page.product_list }

  it { is_expected.to_not be_all_there }

  context 'with products' do
    let!(:product) { create(:product) }

    it { is_expected.to be_all_there }

    it 'show one product' do
      expect(subject.products.size).to eq(1)
      expect(subject.product_links.size).to eq(2)
    end
  end
end
