require 'spec_helper'

RSpec.describe Solidus::PageObjects::Sections::Search do
  let(:page) { Solidus::PageObjects::Pages::Home.new.tap(&:load) }
  subject { page.top_navigation.search }

  it { is_expected.to be_all_there(recursive: true) }
end
