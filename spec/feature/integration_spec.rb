# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Adding an author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Title', with: '1'
    fill_in 'Author', with: '1a'
    click_on 'Create Book'
    visit books_path
	click_on 'Show'
    expect(page).to have_content('1a')
  end
end

RSpec.describe 'Adding a price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Title', with: '2'
	fill_in 'Price', with: 20
    click_on 'Create Book'
    visit books_path
	click_on 'Show'
    expect(page).to have_content(20)
  end
end

RSpec.describe 'Adding an Publish Date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Title', with: '3'
	select '2022', :from => 'book_date_1i'
    select 'February', :from => 'book_date_2i'
    select '3', :from => 'book_date_3i'
    click_on 'Create Book'
    visit books_path
	click_on 'Show'
    expect(page).to have_content('2022-02-03')
  end
end