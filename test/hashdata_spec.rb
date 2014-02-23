require 'hashdata'
require 'rspec'

# Generated using the python "crypt" library for the string 'hashdata' with a salt of 'hashdata':
# >> python <<
# import crypt
# crypt.crypt('hashdata','hashdata')
describe HashData do
  it 'recognizes a DES(UNIX) hash' do
    HashData.new.check_type('haLgYBnzoVJi6','DES(Unix)').should eq(true)
  end
end