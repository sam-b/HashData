require 'hashdata'
require 'rspec'

# Generated using the python "crypt" library for the string 'hashdata' with a salt of 'hashdata':
# >> python version 2.7.1<<
# import crypt
# crypt.crypt('hashdata','hashdata')
describe HashData do
  it 'recognizes a DES(UNIX) hash' do
    HashData.new.check_type('haLgYBnzoVJi6','DES(Unix)').should eq(true)
  end
  it 'recognizes Base64 encoded strings' do
    HashData.new.check_type('aGVsbG90aGVyZQ==','Base64').should eq(true)
  end
end