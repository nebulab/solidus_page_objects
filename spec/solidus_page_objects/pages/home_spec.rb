require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::Home do
  subject { described_class.new.tap(&:load) }

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(spree.root_path) }
  it { is_expected.to be_all_there(recursive: true) }
end
