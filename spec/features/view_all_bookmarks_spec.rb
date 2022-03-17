feature 'Viewing all bookmarks' do
  scenario 'A user can see bookmarks' do
    

    Bookmark.create(url: "http://www.google.com", title: 'Google')
    Bookmark.create(url: "http://www.yahoo.com", title: 'Yahoo')
    Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')

    visit('/bookmarks')

    expect(page).to have_link('Google', href: "http://www.google.com")
    expect(page).to have_link('Yahoo', href:"http://www.yahoo.com")
    expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
  end
end