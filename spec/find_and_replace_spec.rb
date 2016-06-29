require('rspec')
require('find_and_replace.rb')

describe('String#find_and_replace') do
  it('splits a string into an array of words') do
    expect("hello world how are you".find_and_replace("world", "universe")).to(eq('hello universe how are you'))
  end

end
