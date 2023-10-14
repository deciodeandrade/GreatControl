require 'rails_helper'

RSpec.describe "equipment/new", type: :view do
  before(:each) do
    assign(:equipment, Equipment.new(
      name: "MyString",
      serial_number: "MyString",
      user_responsible: "MyString",
      company: nil
    ))
  end

  it "renders new equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_index_path, "post" do

      assert_select "input[name=?]", "equipment[name]"

      assert_select "input[name=?]", "equipment[serial_number]"

      assert_select "input[name=?]", "equipment[user_responsible]"

      assert_select "input[name=?]", "equipment[company_id]"
    end
  end
end
