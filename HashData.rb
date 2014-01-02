require './HashChecker.rb'

puts 'Use Ctrl+C to exit program.'
hash = HashChecker.new

loop do
  puts 'Enter your Hash: '
  trap('SIGINT') { exit }
  out = hash.check(gets.chomp)
  out.empty? ? puts('No hash matches found!') : puts(out)
  puts
end
