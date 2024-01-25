require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        first_name: "First Name",
        last_name: "Last Name",
        phone_number: "Phone Number"
      ),
      Contact.create!(
        first_name: "First Name",
        last_name: "Last Name",
        phone_number: "Phone Number"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
  end
end
