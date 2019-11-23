class Book < ApplicationRecord
  validates_presence_of :title, :author, :ISBN, :description, :language, :image
  mount_uploader :image, ImageUploader
  after_save :clear_cache

  def self.store_result(term, data)
    $redis.set(term, data)
    $redis.expire(term, (DateTime.now + 6).to_i)
  end

  def self.fetch_results(term)
    books = get_result(term)
    if books.nil?
      books_search = Book.search(term)
      if books_search.present?
        books_result = books_search.to_json
        store_result(term, books_result)
        books = get_result(term)
      else
        books = []
      end
    end
    JSON.load books
  end

  def self.get_result(term)
    $redis.get(term)
  end

  def clear_cache
    title = self.title.downcase
    author = self.author.downcase
    description = self.description.downcase
    if Book.get_result(title).present?
      $redis.del title
    elsif Book.get_result(author).present?
      $redis.del author
    elsif Book.get_result(description).present?
      $redis.del description
    end
  end

end
