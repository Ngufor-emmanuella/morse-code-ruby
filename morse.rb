@mors_hash = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}

def morse_letter(leter)
  present_letter = @mors_hash[leter]
  present_letter.upcase
end

def current_word(word)
  letters_array = word.split
  decoded_letters = letters_array.map { |leter| decode_letter(leter) }
  decoded_words = decoded_letters.reduce { |accum, leter| accum + leter }
  decoded_words.upcase
end

def decode_messages(message)
  word_array = message.split('   ')
  decode_message = word_array.map { |word| decode_word(word) }
  decode_phrases = decode_message.reduce { |accum, word| "#{accum} #{word}" }
  puts decode_phrases
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
