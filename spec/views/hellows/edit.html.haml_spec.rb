require 'spec_helper'

describe "hellows/edit" do
  before(:each) do
    @hellow = assign(:hellow, stub_model(Hellow,
      :name => "MyString",
      :memo => "MyText",
      :category => ""
    ))
  end

  it "renders the edit hellow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hellow_path(@hellow), "post" do
      assert_select "input#hellow_name[name=?]", "hellow[name]"
      assert_select "textarea#hellow_memo[name=?]", "hellow[memo]"
      assert_select "input#hellow_category[name=?]", "hellow[category]"
    end
  end
end
