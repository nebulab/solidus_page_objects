require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Product do
  let(:product) { create(:product, :with_images, :with_properties, :with_taxons) }

  before { create_list(:product, 3) }

  it_behaves_like 'a page' do
    let(:page_path) { spree.product_path(product.slug) }
    let(:params) { { slug: product.slug } }
  end
end
