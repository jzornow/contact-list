require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe "validations" do
    subject{ Contact.new(first_name: first_name, last_name: last_name, phone_number: phone_number) }
    describe "first name validation" do
      let(:last_name){ 'Coolgal' }
      let(:phone_number){ '6666666666' }
      context "contains numbers" do
        let(:first_name) { 'Mi3ki' }
        it { is_expected.to be_invalid }
      end

      context "contains non-dash special characters" do
        let(:first_name){ 'Mi&ki' }

      end

      context "is valid input" do
        let(:first_name){ 'Mic-ki' }
      end
    end
  end
end
