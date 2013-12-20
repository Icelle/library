require 'spec_helper'

describe Checkout do
  it {should have_valid(:check_out_date).when('1/1/2013')}
  it {should_not have_valid(:check_out_date).when('', nil)}

  it {should have_valid(:return_date).when('1/1/2013')}
  it {should_not have_valid(:return_date).when('', nil)}

  it {should have_valid(:borrower).when('John Smith')}
  it {should_not have_valid(:borrower).when('', nil)}

  it { should belong_to :book }
end
