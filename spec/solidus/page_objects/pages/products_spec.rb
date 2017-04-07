require 'spec_helper'

RSpec.describe Solidus::PageObjects::Pages::Products do
  subject { described_class.new.tap(&:load) }

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(spree.products_path) }
  it { is_expected.to be_all_there }
end
