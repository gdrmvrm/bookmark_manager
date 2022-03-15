require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      #Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.yahoo.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      

      bookmarks = Bookmark.all
    
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.yahoo.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      new_bookmark = Bookmark.create(url: 'http://example.org')

      expect(Bookmark.all).to include("http://example.org")
    end
  end

end