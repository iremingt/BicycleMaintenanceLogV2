require 'rails_helper'

RSpec.describe "work_logs/edit", type: :view do
  before(:each) do
    @work_log = assign(:work_log, WorkLog.create!(
      title: "MyString",
      description: "MyText",
      date: 1,
      hoursUntilServiceDue: 1
    ))
  end

  it "renders the edit work_log form" do
    render

    assert_select "form[action=?][method=?]", work_log_path(@work_log), "post" do

      assert_select "input[name=?]", "work_log[title]"

      assert_select "textarea[name=?]", "work_log[description]"

      assert_select "input[name=?]", "work_log[date]"

      assert_select "input[name=?]", "work_log[hoursUntilServiceDue]"
    end
  end
end
