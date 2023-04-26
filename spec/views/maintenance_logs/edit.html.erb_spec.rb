require 'rails_helper'

RSpec.describe "maintenance_logs/edit", type: :view do
  before(:each) do
    @maintenance_log = assign(:maintenance_log, MaintenanceLog.create!(
      title: "MyString",
      description: "MyText",
      date: 1,
      hoursUntilService: 1
    ))
  end

  it "renders the edit maintenance_log form" do
    render

    assert_select "form[action=?][method=?]", maintenance_log_path(@maintenance_log), "post" do

      assert_select "input[name=?]", "maintenance_log[title]"

      assert_select "textarea[name=?]", "maintenance_log[description]"

      assert_select "input[name=?]", "maintenance_log[date]"

      assert_select "input[name=?]", "maintenance_log[hoursUntilService]"
    end
  end
end
