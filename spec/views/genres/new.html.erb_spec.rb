require 'rails_helper'

RSpec.describe 'genres/new' do
  before do
    assign(:genre, Genre.new(
                     name: 'MyString'
                   ))
  end

  it 'renders new genre form' do
    render

    assert_select 'form[action=?][method=?]', genres_path, 'post' do
      assert_select 'input[name=?]', 'genre[name]'
    end
  end
end
