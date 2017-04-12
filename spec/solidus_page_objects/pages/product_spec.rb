require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Product do
  let(:taxon) { create(:taxon) }
  let(:property) { create(:property) }
  let(:product) { create(:product, properties: [property], taxons: [taxon]) }

  before { create_list(:product, 3, taxons: [taxon]) }

  subject { described_class.new.tap { |page| page.load(slug: product.slug) } }

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(spree.product_path(product.slug)) }
  it { is_expected.to be_all_there }
end
