feature 'Viewing web pages' do
  scenario 'Viewing the log in page' do
    visit '/'
    expect(page).to have_content 'Welcome to Chitter'
  end

  scenario 'Accessing the TweetFeed' do
    visit '/tweetfeed'
    expect(page).to have_content 'TweetFeed:'
  end

  scenario 'Accessing the log in page' do
    visit '/login'
    expect(page).to have_button 'Submit'
  end

  scenario 'Accessing the sign up page' do
    visit '/signup'
    expect(page).to have_content 'I agree to the terms and conditions'
  end

end
