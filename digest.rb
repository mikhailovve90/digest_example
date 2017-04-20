require 'digest'

puts "Введите слово или фразу для шифровки :"
slv = STDIN.gets.chomp

puts "Каким способом хотите шифровать :
1 - MD5
2 - SHA1
3 - SHA2"
vibor = STDIN.gets.to_i

if(vibor == 1)
  md5 = Digest::MD5.hexdigest(slv) # шифрование в md5 фразы введённой ранее
  puts "Сообщение " + md5
elsif(vibor == 2)
  sha1 = Digest::SHA1.hexdigest(slv)#шифрование в sha1 фразы введённой ранее
  puts "Сообщение " + sha1
elsif(vibor == 3)
  sha2 = Digest::SHA2.hexdigest(slv)#шифрование в sha1 фразы введённой ранее
  puts "Сообщение " + sha2
else
  puts "Вы ввели неверный тип шифрования"
end


