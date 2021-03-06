MORSE_CODE_MAP = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(character)
  MORSE_CODE_MAP[character]
end

def decode_word(word)
  string = ''
  word_array = word.split
  word_array.each { |el| string += MORSE_CODE_MAP[el] }
  string
end

# decode_word('-- -.--')

def decode(sentence)
  message = ''
  word_array = sentence.split('  ')
  word_array.each do |word|
    message += "#{decode_word(word)} "
  end
  message
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..    --- ..-.    .-. ..- -... .. . ...')
