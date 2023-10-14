require 'rails_helper'

RSpec.describe "equipment/index", type: :view do
  before(:each) do
    assign(:equipment, [
      Equipment.create!(
        name: "Name",
        serial_number: "Serial Number",
        user_responsible: "User Responsible",
        company: nil
      ),
      Equipment.create!(
        name: "Name",
        serial_number: "Serial Number",
        user_responsible: "User Responsible",
        company: nil
      )
    ])
  end

  it "renders a list of equipment" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Serial Number".to_s, count: 2
    assert_select "tr>td", text: "User Responsible".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
