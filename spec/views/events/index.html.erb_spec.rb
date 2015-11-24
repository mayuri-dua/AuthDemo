require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :user_id => 1,
        :details => "Details"
      ),
      Event.create!(
        :user_id => 1,
        :details => "Details"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
