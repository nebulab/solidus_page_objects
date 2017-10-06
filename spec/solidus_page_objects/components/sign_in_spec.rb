require 'spec_helper'

RSpec.describe SolidusPageObjects::Components::SignIn do
  let(:page) { SolidusPageObjects::Pages::SignIn.new.tap(&:load) }

  subject { page }

  describe '#sign_in_with' do
    let(:email) { 'info@nebulab.it' }
    let(:password) { 'arandompassword' }

    before do
      allow(subject).to receive(:email_input).and_return(subject.email_input)
      allow(subject).to receive(:password_input).and_return(subject.password_input)
      allow(subject).to receive(:remember_me_checkbox).and_return(subject.remember_me_checkbox)
      allow(subject).to receive(:sign_in_button).and_return(subject.sign_in_button)
    end

    context 'when remember_me is not set' do
      after { subject.sign_in_with(email, password) }

      it 'sets email' do
        expect(subject.email_input).to receive(:set).with(email)
      end

      it 'sets password' do
        expect(subject.password_input).to receive(:set).with(password)
      end

      it 'sets remember me with false' do
        expect(subject.remember_me_checkbox).to receive(:set).with(false)
      end

      it 'clicks the submit button' do
        expect(subject.sign_in_button).to receive(:click)
      end
    end

    context 'when rember me is set' do
      after { subject.sign_in_with(email, password, remember_me: remember_me) }

      context 'with true' do
        let(:remember_me) { true }

        it 'sets it with true' do
          expect(subject.remember_me_checkbox).to receive(:set).with(remember_me)
        end
      end

      context 'with false' do
        let(:remember_me) { false }

        it 'sets it with false' do
          expect(subject.remember_me_checkbox).to receive(:set).with(remember_me)
        end
      end
    end
  end
end
