require 'spec_helper'

RSpec.describe Solidus::PageObjects::Sections::Search do
  let(:page) { Solidus::PageObjects::Pages::Home.new.tap(&:load) }
  subject { page.top_navigation.search }

  it { is_expected.to be_all_there(recursive: true) }

  describe '.search' do
    subject { page.top_navigation.search.search_for('keyword') }
    it { is_expected.to be_a(Solidus::PageObjects::Pages::Products) }
  end
end
