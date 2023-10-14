require 'rails_helper'

RSpec.describe "equipment/edit", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      name: "MyString",
      serial_number: "MyString",
      user_responsible: "MyString",
      company: nil
    ))
  end

  it "renders the edit equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do

      assert_select "input[name=?]", "equipment[name]"

      assert_select "input[name=?]", "equipment[serial_number]"

      assert_select "input[name=?]", "equipment[user_responsible]"

      assert_select "input[name=?]", "equipment[company_id]"
    end
  end
end
