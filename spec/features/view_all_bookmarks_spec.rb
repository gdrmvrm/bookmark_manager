feature 'Viewing all bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    #add the test data / and to refactor by using the create method
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.yahoo.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    Bookmark.create(url: "http://www.google.com")
    Bookmark.create(url: "http://www.yahoo.com")
    Bookmark.create(url: "http://www.makersacademy.com")

    visit('/bookmarks')

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.yahoo.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end