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

    fill_in "Title", with: @book.title
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy book" do
    visit books_url
    assert_selector "h1", text: "Books"

    assert_text @book.title  # Ensure book exists before deletion

    accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_no_text @book.title
    assert_text "Book was successfully destroyed"
  end
end
