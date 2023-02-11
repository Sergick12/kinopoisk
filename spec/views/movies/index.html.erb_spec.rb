require 'rails_helper'

RSpec.describe 'movies/index' do
  before do
    assign(:movies, [
             Movie.create!(
               name: 'Name',
               description: 'Description',
               age_linit: 2
             ),
             Movie.create!(
               name: 'Name',
               description: 'Description',
               age_linit: 2
             )
           ])
  end

  it 'renders a list of movies' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Description'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
