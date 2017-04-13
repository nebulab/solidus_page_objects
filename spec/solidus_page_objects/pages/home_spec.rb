require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Home do
  before { create_list(:product, 5, :with_taxons) }

  it_behaves_like 'a page' do
    let(:page_path) { spree.root_path }
  end
end
