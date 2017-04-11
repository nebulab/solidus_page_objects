require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Products do
  let(:taxonomy) { create(:taxonomy) }

  before do
    create_list(:product, 5)
    create_list(:taxon, 3, taxonomy: taxonomy, parent: taxonomy.root)
  end

  subject { described_class.new.tap(&:load) }

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(spree.products_path) }
  it { is_expected.to be_all_there(recursive: true) }
end
