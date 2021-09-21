#location spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do

    scenario 'valid title' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'J. K. Rowling'
        fill_in 'Price', with: '12.37'
        fill_in 'Published Date', with: '06-26-1997'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Harry Potter')
    end

    scenario 'valid author' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'J. K. Rowling'
        fill_in 'Price', with: '12.37'
        fill_in 'Published Date', with: '06-26-1997'
        click_on 'Create Book'
        expect(page).to have_content('J. K. Rowling')
    end

    scenario 'valid price' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'J. K. Rowling'
        fill_in 'Price', with: '12.37'
        fill_in 'Published Date', with: '06-26-1997'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('12.37')
    end

    scenario 'valid published-date' do
        visit new_book_path
        fill_in 'Title', with: 'Harry Potter'
        fill_in 'Author', with: 'J. K. Rowling'
        fill_in 'Price', with: '12.37'
        fill_in 'Published Date', with: '06-26-1997'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('06-26-1997')
    end
    
end
