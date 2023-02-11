require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      name: "MyString",
      description: "MyString",
      age_linit: 1
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[name]"

      assert_select "input[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[age_linit]"
    end
  end
end
