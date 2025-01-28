require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'is valid with all attributes' do
      book = Book.new(
        title: 'Sample Title',
        author: 'Sample Author',
        price: 9.99,
        published_date: '2025-01-01'
      )
      expect(book).to be_valid
    end

    it 'is invalid without a title' do
      book = Book.new(
        title: nil,
        author: 'Sample Author',
        price: 9.99,
        published_date: '2025-01-01'
      )
      expect(book).not_to be_valid
    end

    it 'is invalid without an author' do
      book = Book.new(
        title: 'Sample Title',
        author: nil,
        price: 9.99,
        published_date: '2025-01-01'
      )
      expect(book).not_to be_valid
    end

    it 'is invalid without a price' do
      book = Book.new(
        title: 'Sample Title',
        author: 'Sample Author',
        price: nil,
        published_date: '2025-01-01'
      )
      expect(book).not_to be_valid
    end

    it 'is invalid with a non-numeric price' do
      book = Book.new(
        title: 'Sample Title',
        author: 'Sample Author',
        price: 'not_a_number',
        published_date: '2025-01-01'
      )
      expect(book).not_to be_valid
    end

    it 'is invalid without a published date' do
      book = Book.new(
        title: 'Sample Title',
        author: 'Sample Author',
        price: 9.99,
        published_date: nil
      )
      expect(book).not_to be_valid
    end
  end
end
