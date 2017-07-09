require 'digest'

puts "Введите слово или фразу для шифровки :"
slv = STDIN.gets.chomp

puts "Каким способом хотите шифровать :
1 - MD5
2 - SHA1"
vibor = STDIN.gets.to_i

if vibor == 1
  md5 = Digest::MD5.hexdigest(slv)
  puts "Сообщение " + md5
elsif vibor == 2
  sha1 = Digest::SHA1.hexdigest(slv)
  puts "Сообщение " + sha1
else
  puts "Вы ввели недопустимое значение"
end


