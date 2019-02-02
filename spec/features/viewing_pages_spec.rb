feature 'Viewing web pages' do
  scenario 'Viewing the log in page' do
    visit '/'
    expect(page).to have_content 'Welcome to Chitter'
  end

  scenario 'Viewing the tweet homepage' do
    visit '/'
    click_button 'View TweetFeed'
    expect(page).to have_content 'TweetFeed:'
  end

end
