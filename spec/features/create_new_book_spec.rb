require 'rails_helper'

# As an user
# I want to add a book
# So that others can review it

# [] User expects to see form on page to add a book.
# [] User expects that the form will allow them to input title, author, description
# => year, and genre.
# [] User should be able to post new book details using "Add Book" button.
# [] When the User successfully adds a book, they will be redirected to the
# => 'books/id/' page.

feature "user can add a new book" do

  before(:each) do
    visit new_book_path
    expect(page).to have_content "New Book Form"
  end

  scenario "user adds new book successfully" do


    fill_in 'Title', with: "The Monk"
    fill_in 'Author', with: "Matthew Lewis"
    fill_in 'Description', with: "Gothic Lit, crazy monk."
    fill_in 'Year', with: "1796"
    fill_in 'Genre', with: "Gothic Literature"

    click_button "Add Book"

    expect(page).to have_content "Book added successfully"
    expect(page).to have_content "The Monk"
    expect(page).to have_content "Gothic Lit, crazy monk."
  end

  scenario "user does not provide proper information for a new book" do

    click_button "Add Book"
    expect(page).to have_content "Title can't be blank. Author can't be blank. Description can't be blank. Year can't be blank. Genre can't be blank."
  end
end
