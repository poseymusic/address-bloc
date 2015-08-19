def greetings
  ARGV.each_with_index do |value, idx|
    if idx != 0
      puts "#{ARGV[0]} #{value}"
    end
  end
end

greetings
