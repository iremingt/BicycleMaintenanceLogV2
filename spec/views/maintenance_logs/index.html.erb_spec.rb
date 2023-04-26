require 'rails_helper'

RSpec.describe "maintenance_logs/index", type: :view do
  before(:each) do
    assign(:maintenance_logs, [
      MaintenanceLog.create!(
        title: "Title",
        description: "MyText",
        date: 2,
        hoursUntilService: 3
      ),
      MaintenanceLog.create!(
        title: "Title",
        description: "MyText",
        date: 2,
        hoursUntilService: 3
      )
    ])
  end

  it "renders a list of maintenance_logs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
