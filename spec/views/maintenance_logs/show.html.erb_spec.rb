require 'rails_helper'

RSpec.describe "maintenance_logs/show", type: :view do
  before(:each) do
    @maintenance_log = assign(:maintenance_log, MaintenanceLog.create!(
      title: "Title",
      description: "MyText",
      date: 2,
      hoursUntilService: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
