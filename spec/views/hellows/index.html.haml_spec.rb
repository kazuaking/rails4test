require 'spec_helper'

describe "hellows/index" do
  before(:each) do
    assign(:hellows, [
      stub_model(Hellow,
        :name => "Name",
        :memo => "MyText",
        :category => ""
      ),
      stub_model(Hellow,
        :name => "Name",
        :memo => "MyText",
        :category => ""
      )
    ])
  end

  it "renders a list of hellows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
