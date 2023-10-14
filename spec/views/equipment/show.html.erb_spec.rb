require 'rails_helper'

RSpec.describe "equipment/show", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      name: "Name",
      serial_number: "Serial Number",
      user_responsible: "User Responsible",
      company: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Serial Number/)
    expect(rendered).to match(/User Responsible/)
    expect(rendered).to match(//)
  end
end
