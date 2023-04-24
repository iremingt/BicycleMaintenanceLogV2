require 'rails_helper'

RSpec.describe "work_logs/index", type: :view do
  before(:each) do
    assign(:work_logs, [
      WorkLog.create!(
        title: "Title",
        description: "MyText",
        date: 2,
        hoursUntilServiceDue: 3
      ),
      WorkLog.create!(
        title: "Title",
        description: "MyText",
        date: 2,
        hoursUntilServiceDue: 3
      )
    ])
  end

  it "renders a list of work_logs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
