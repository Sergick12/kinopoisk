require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    assign(:movie, Movie.create!(
      name: "Name",
      description: "Description",
      age_linit: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end
