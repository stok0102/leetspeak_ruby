require('pry')

class String
  define_method(:leetspeak) do
    prime_array = self.split("")
    leet_array = []
    prime_array.each_with_index do |letter, index|
      if letter == 'e'
        leet_array.push("3")
      elsif letter == 'o'
        leet_array.push("0")
      elsif letter == 'I'
        leet_array.push("1")
      # elsif prime_array[0] == letter
      #   leet_array.push(letter)
    elsif letter == 's' && index != 0 && prime_array[index - 1] != " "
        leet_array.push("z")

      else
        leet_array.push(letter)
        # puts "current_index: #{index}"
      end
    end
    leet_string = leet_array.join()
    # binding.pry
  end
end
