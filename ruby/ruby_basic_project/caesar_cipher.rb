def caesar_cipher(string, shift)

	# Map each character in the string using ruby map method 
	string.each_char.map do | char |
		case char 
			
		when 'a'..'z'
			base = 'a'.ord
			((char.ord - base + shift) % 26 + base).chr
		
		when 'A'..'Z'
			base = 'A'.ord
			((char.ord - base + shift) % 26 + base ).chr 
		else 
			char
		end
	end.join
end
puts caesar_cipher("What a string!", 5)		

		
  




