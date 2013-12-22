require 'spec_helper'

describe Book do
  it {should have_valid(:title).when('Tom Sawyer', 'Huckleberry Finn')}
  it {should_not have_valid(:title).when('', nil)}
  it {should have_valid(:rating).when('0', '100', 1, 100, 50)}
  it {should_not have_valid(:rating).when('hello', 'koa', '101', '-1', -1, 101)}

  it 'can seed data' do
    n = 2
    Book.seed(n)
    expect(Book.all.count).to be > 0
    # ensure no duplicates
    Book.seed(n)
    expect(Book.all.map(&:title).uniq.size).to eq(Book.all.count)
    # count_after_seed = Book.count
    # Book.seed
    # puts Book.all.map(&:title)
    # expect(Book.count).to eql(count_after_seed)
  end
end
