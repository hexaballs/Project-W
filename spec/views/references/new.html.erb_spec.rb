require 'rails_helper'

RSpec.describe "references/new", :type => :view do
  before(:each) do
    assign(:reference, Reference.new(
      :name => "MyString",
      :age => 1
    ))
  end

  it "renders new reference form" do
    render

    assert_select "form[action=?][method=?]", references_path, "post" do

      assert_select "input#reference_name[name=?]", "reference[name]"

      assert_select "input#reference_age[name=?]", "reference[age]"
    end
  end
end
