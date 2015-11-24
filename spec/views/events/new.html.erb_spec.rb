require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :user_id => 1,
      :details => "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_user_id[name=?]", "event[user_id]"

      assert_select "input#event_details[name=?]", "event[details]"
    end
  end
end
