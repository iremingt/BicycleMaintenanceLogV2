require 'rails_helper'

RSpec.describe "work_logs/show", type: :view do
  before(:each) do
    @work_log = assign(:work_log, WorkLog.create!(
      title: "Title",
      description: "MyText",
      date: 2,
      hoursUntilServiceDue: 3
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
