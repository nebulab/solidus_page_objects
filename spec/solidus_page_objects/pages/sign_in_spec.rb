require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::SignIn do
  it_behaves_like 'a page' do
    let(:page_path) { spree.login_path }
  end
end
