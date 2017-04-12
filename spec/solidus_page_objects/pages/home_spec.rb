require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Home do
  let(:taxonomy) { create(:taxonomy) }

  before do
    create_list(:product, 5)
    create_list(:taxon, 3, taxonomy: taxonomy, parent: taxonomy.root)
  end

  it_behaves_like 'a page' do
    let(:page_path) { spree.root_path }
  end
end
