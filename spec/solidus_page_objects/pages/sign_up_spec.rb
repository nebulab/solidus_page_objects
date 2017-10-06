require 'spec_helper'

RSpec.describe SolidusPageObjects::Pages::SignUp do
  it_behaves_like 'a page' do
    let(:page_path) { spree.signup_path }
  end
end
