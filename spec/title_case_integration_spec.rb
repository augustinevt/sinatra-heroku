require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do

  it('processes the user entry and returns it title cased') do
    visit('/')
    fill_in('title', :with => 'green eggs and ham')
    click_button('Send')
    expect(page).to have_content('Green Eggs and Ham')
  end

end

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('scrabble-score', :with => 'zebra')
    click_button('Get Score')
    expect(page).to have_content('16')
  end

end

describe('the find and replace feature', {:type => :feature }) do
  it('enters a string into find and replace form and return to modified string on page') do
    visit('/')
    fill_in('sentence', :with => 'hello world how are you?')
    fill_in('old-word', :with => 'world')
    fill_in('new-word', :with => 'universe')
    click_button('Replace')
    expect(page).to have_content('hello universe how are you?')
  end
end
