require 'spec_helper'

describe SolidusPageObjects::Components::Checkout::Address do
  let(:field_name) { 'SEL' }

  describe '#input_address_selector' do
    subject { described_class.input_address_selector(field_name) }

    context 'with empty string' do
      let(:field_name) { '' }

      it { expect{ subject }.to raise_error(ArgumentError) }
    end

    it { is_expected.to eq "input[name$='_address_attributes][SEL]']" }
  end

  describe '.dropdown_address_selector' do
    subject { described_class.dropdown_address_selector(field_name) }

    context 'with empty string' do
      let(:field_name) { '' }

      it { expect{ subject }.to raise_error(ArgumentError) }
    end

    it { is_expected.to eq "select[name$='_address_attributes][SEL]']" }
  end
end
