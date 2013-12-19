require 'spec_helper'

describe Book do
  it {should have_valid(:title).when('Tom Sawyer', 'Huckleberry Finn')}
  it {should_not have_valid(:title).when('', nil)}
end
