require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Product do
  let(:variants) { create_list(:variant, 5) }
  let!(:product) { variants.first.product }

  subject do
    product_page = described_class.new
    product_page.load(slug: product.slug)
    product_page
  end

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(spree.product_path(product)) }
  it { is_expected.to be_all_there(recursive: true) }
end
