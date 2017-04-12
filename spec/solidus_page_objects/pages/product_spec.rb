require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Product do
  let(:taxon) { create(:taxon) }
  let(:property) { create(:property) }
  let(:product) do
    create(:product, properties: [property], taxons: [taxon]).tap do |product|
      product.images << create(:image)
      product.images << create(:image)
    end
  end

  before { create_list(:product, 3, taxons: [taxon]) }

  it_behaves_like 'a page' do
    let(:page_path) { spree.product_path(product.slug) }
    let(:params) { { slug: product.slug } }
  end
end
