require 'rails_helper'

RSpec.describe "work_logs/new", type: :view do
  before(:each) do
    assign(:work_log, WorkLog.new(
      title: "MyString",
      description: "MyText",
      date: 1,
      hoursUntilServiceDue: 1
    ))
  end

  it "renders new work_log form" do
    render

    assert_select "form[action=?][method=?]", work_logs_path, "post" do

      assert_select "input[name=?]", "work_log[title]"

      assert_select "textarea[name=?]", "work_log[description]"

      assert_select "input[name=?]", "work_log[date]"

      assert_select "input[name=?]", "work_log[hoursUntilServiceDue]"
    end
  end
end
