def decode_morse_code()
  morsecode = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---',
               '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..'];
  morsevalues = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z];

p "Enter a word to convert to Morse code";

message = gets.chomp;

code_array = message.split('  ')
  string = ''
  code_array.each do |word|
    word_array = word.split
    word_array.each do |letter|
      string += morsevalues[morsecode.index(letter)]
    end
    string += ' '
  end
  "The translated code is:\n ====> #{string}"
end