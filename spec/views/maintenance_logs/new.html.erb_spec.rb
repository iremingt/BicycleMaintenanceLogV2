require 'rails_helper'

RSpec.describe "maintenance_logs/new", type: :view do
  before(:each) do
    assign(:maintenance_log, MaintenanceLog.new(
      title: "MyString",
      description: "MyText",
      date: 1,
      hoursUntilService: 1
    ))
  end

  it "renders new maintenance_log form" do
    render

    assert_select "form[action=?][method=?]", maintenance_logs_path, "post" do

      assert_select "input[name=?]", "maintenance_log[title]"

      assert_select "textarea[name=?]", "maintenance_log[description]"

      assert_select "input[name=?]", "maintenance_log[date]"

      assert_select "input[name=?]", "maintenance_log[hoursUntilService]"
    end
  end
end
