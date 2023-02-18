require 'rails_helper'

RSpec.describe 'genres/show' do
  before do
    assign(:genre, Genre.create!(
                     name: 'Name'
                   ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
