require 'rails_helper'

RSpec.describe "references/edit", :type => :view do
  before(:each) do
    @reference = assign(:reference, Reference.create!(
      :name => "MyString",
      :age => 1
    ))
  end

  it "renders the edit reference form" do
    render

    assert_select "form[action=?][method=?]", reference_path(@reference), "post" do

      assert_select "input#reference_name[name=?]", "reference[name]"

      assert_select "input#reference_age[name=?]", "reference[age]"
    end
  end
end
