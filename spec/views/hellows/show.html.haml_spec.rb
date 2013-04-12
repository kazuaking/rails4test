require 'spec_helper'

describe "hellows/show" do
  before(:each) do
    @hellow = assign(:hellow, stub_model(Hellow,
      :name => "Name",
      :memo => "MyText",
      :category => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
