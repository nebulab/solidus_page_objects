require 'spec_helper'

RSpec.describe SolidusPageObjects::Sections::Search do
  let(:page) { SolidusPageObjects::Pages::Home.new.tap(&:load) }
  subject { page.header.search }

  describe '#search' do
    subject { page.header.search.search_for('keyword') }
    it { is_expected.to be_a(SolidusPageObjects::Pages::Products) }
  end
end
