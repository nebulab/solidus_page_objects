require 'spec_helper'

RSpec.describe SolidusPageObjects::Components::SignUp do
  let(:page) { SolidusPageObjects::Pages::SignUp.new.tap(&:load) }

  subject { page }

  describe '#sign_up_with' do
    let(:email) { 'info@nebulab.it' }
    let(:password) { 'arandompassword' }

    before do
      allow(subject).to receive(:email_input).and_return(subject.email_input)
      allow(subject).to receive(:password_input).and_return(subject.password_input)
      allow(subject).to receive(:password_confirmation_input).and_return(subject.password_confirmation_input)
      allow(subject).to receive(:sign_up_button).and_return(subject.sign_up_button)
    end

    context 'when confirmation password is not set' do
      after { subject.sign_up_with(email, password) }

      it 'sets email' do
        expect(subject.email_input).to receive(:set).with(email)
      end

      it 'sets password' do
        expect(subject.password_input).to receive(:set).with(password)
      end

      it 'sets password_confirmation same as password' do
        expect(subject.password_confirmation_input).to receive(:set).with(password)
      end

      it 'clicks the submit button' do
        expect(subject.sign_up_button).to receive(:click)
      end
    end

    context 'when confirmation password is set' do
      let(:password_confirmation) { 'anotherpassword' }
      after { subject.sign_up_with(email, password, password_confirmation) }

      it 'sets email' do
        expect(subject.email_input).to receive(:set).with(email)
      end

      it 'sets password' do
        expect(subject.password_input).to receive(:set).with(password)
      end

      it 'sets password_confirmation with given password' do
        expect(subject.password_confirmation_input).to receive(:set).with(password_confirmation)
      end

      it 'clicks the submit button' do
        expect(subject.sign_up_button).to receive(:click)
      end
    end
  end
end
