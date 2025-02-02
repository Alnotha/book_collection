require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  # setup do
  #   @book = Book.create!(title: "Sample Book", author: "Test Author", price: 9.99, published_date: Date.today)
  # end

  # test "visiting the index" do
  #   visit books_url
  #   assert_selector "h1", text: "Books"
  # end

  # test "should create book" do
  #   visit new_book_ur
  #   fill_in "Title", with: "New Test Book"
  #   fill_in "Author", with: "John Doe"
  #   fill_in "Price", with: "12.99"
  #   fill_in "Published Date", with: "2025-02-02"
  #   click_button "Save Book"
  #   assert_text "Book was successfully created."
  # end

  # test "should update book" do
  #   visit edit_book_url(@book)
  #   fill_in "Title", with: "Updated Book Title"
  #   fill_in "Author", with: "Updated Author"
  #   fill_in "Price", with: "15.99"
  #   fill_in "Published Date", with: "2025-02-01"
  #   click_button "Update Book"
  #   assert_text "Book was successfully updated."
  # end

  # test "should destroy book" do
  #   visit books_url
  #   assert_selector "form input[type='submit']", text: "Destroy this book"
  #   accept_confirm do
  #     click_on "Destroy this book"
  #   end
  #   assert_text "Book was successfully destroyed."
  # end
end
