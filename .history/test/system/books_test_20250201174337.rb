require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Title", with: "New Test Book"
    fill_in "Author", with: "John Doe"
    fill_in "Price", with: "12.99"
    fill_in "Published Date", with: "2025-06-15"

    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  # test "should update book" do
  #   visit book_url(@book)
  #   click_on "Edit this book", match: :first

  #   fill_in "Title", with: "Updated Title"
  #   fill_in "Author", with: "Jane Doe"
  #   fill_in "Price", with: "10.99"
  #   fill_in "Published Date", with: "2025-01-01"

  #   click_on "Update Book"

  #   assert_text "Book was successfully updated"
  #   click_on "Back"
  # end

  # test "should destroy book" do
  #   visit books_url
  #   assert_text @book.title  # Ensure book exists before deletion

  #   assert_selector "button, a", text: "Destroy"

  #   accept_confirm do
  #     click_on "Destroy", match: :first
  #   end

  #   assert_no_text @book.title
  #   assert_text "Book was successfully destroyed"
  # end
end
