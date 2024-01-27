require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe "validations" do
    subject { Contact.new(first_name:, last_name:, phone_number:) }
    describe "first name validation" do
      let(:last_name) { 'Coolgal' }
      let(:phone_number) { '6665551234' }
      context "contains numbers" do
        let(:first_name) { 'Mi3ki' }
        it { is_expected.to be_invalid }
      end
      context "contains non-dash special characters" do
        let(:first_name) { 'Mi&ki' }
        it { is_expected.to be_invalid }
      end

      context "is valid input with a dash" do
        let(:first_name) { 'Mic-ki' }
        it { is_expected.to be_valid }
      end

      context "is valid input with a space" do
        let(:first_name) { 'Mic ki' }
        it { is_expected.to be_valid }
      end
    end

    describe "last name validation" do
      let(:first_name) { 'Coolgal' }
      let(:phone_number) { '6665551234' }
      context "contains numbers" do
        let(:last_name) { 'Mi3ki' }
        it { is_expected.to be_invalid }
      end
      context "contains non-dash special characters" do
        let(:last_name) { 'Mi&ki' }
        it { is_expected.to be_invalid }
      end

      context "is valid input with a dash" do
        let(:last_name) { 'Mic-ki' }
        it { is_expected.to be_valid }
      end

      context "is valid input with a space" do
        let(:last_name) { 'Mic ki' }
        it { is_expected.to be_valid }
      end
    end

    describe "phone number validation" do
      let(:last_name) { 'Coolgal' }
      let(:first_name) { 'Micki' }
      context "has a country code" do
        let(:phone_number) { '12345678888' }
        it { is_expected.to be_valid }
      end

      context 'has no country code' do
        let(:phone_number) { '2345678888' }
        it { is_expected.to be_valid }
      end

      context 'is too short' do
        let(:phone_number) { '234567' }
        it { is_expected.to be_invalid }
      end

      context 'is too long' do
        let(:phone_number) { '1234567123456788889' }
        it { is_expected.to be_invalid }
      end

      context 'has letters' do
        let(:phone_number) { '1234567h' }
        it { is_expected.to be_invalid }
      end

      context 'has special characters' do
        let(:phone_number) { '123-4567' }
        it { is_expected.to be_invalid }
      end
    end
  end
end
