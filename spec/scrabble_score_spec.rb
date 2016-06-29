require('rspec')
require('scrabble_score.rb')

describe('String#scrabble_score') do
  it('given "a" it should return value of one') do
    expect("a".scrabble_score()).to(eq(1))
  end
  it('given "d" it should return value of two') do
    expect("d".scrabble_score()).to(eq(2))
  end
  it('given "b","c","m" or "p" it should return value of three') do
    expect("b".scrabble_score()).to(eq(3))
  end
  it('given "f","h","v","w","y" it should return value of four') do
    expect("f".scrabble_score()).to(eq(4))
  end
  it('given "k" it should return value of five') do
    expect("k".scrabble_score()).to(eq(5))
  end
  it('given "j" or "x" it should return value of eight') do
    expect("j".scrabble_score()).to(eq(8))
  end
  it('given "q" or "z" it should return value of ten') do
    expect("q".scrabble_score()).to(eq(10))
  end

end
