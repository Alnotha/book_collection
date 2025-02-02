require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = Book.create!(title: "Sample Book", author: "Test Author", price: 9.99, published_date: Date.today)
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

  test "should update book" do
    visit edit_book_url(@book)
    assert_selector "input[name='book[author]']"
    fill_in "Author", with: "Updated Author", match: :prefer_exact
    click_button "Update Book"
    assert_text "Book was successfully updated."
  end

  test "should destroy book" do
    visit books_url
    assert_selector "form button", text: "Destroy this book"
    accept_confirm do
      click_on "Destroy this book"
    end
    assert_text "Book was successfully destroyed."
  end
end
