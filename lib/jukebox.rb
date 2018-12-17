songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  count = 1
  
  songs.each do |song|
    puts "#{count}. #{song}"
    count += 1
  end
end

def play(songs)
  puts "Please endet a song name or number"
  user_input = gets.chomp
  
  if user_input.is_a?(Numeric) and user_input <= songs.length and user_input >= 0
    puts "Playing #{songs[user_input - 1]}"
  elsif user_input.is_a(String) and songs.include?(user_input)
    puts "Playing #{songs[]}"
  end
end