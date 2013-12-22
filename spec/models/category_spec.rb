require 'spec_helper'

describe Category do
  it {should have_valid(:name).when('Fiction')}
  it {should_not have_valid(:name).when('', nil)}

  it 'category must be unique' do
    FactoryGirl.create(:category, {name: 'Fiction'})
    dup = FactoryGirl.build(:category, {name: 'Fiction'})
    dup.should_not be_valid
    dup.should have(1).errors_on(:name)
  end

  it 'can seed data' do
    Category.seed(2)  #can do it this way too.
    expect(Category.all.count).to be >0
    Category.seed(2)
    expect(Category.all.map(&:name).uniq.size).to eq(Category.all.count)
  end
end
