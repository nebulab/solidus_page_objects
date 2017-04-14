RSpec.shared_examples 'a page' do
  subject { described_class.new.tap { |page| page.load(try(:params) || {}) } }

  it { is_expected.to be_displayed }
  it { is_expected.to have_current_path(page_path) }
  it { is_expected.to be_all_there(recursive: true) }
end
