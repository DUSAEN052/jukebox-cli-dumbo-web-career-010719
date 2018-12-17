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
  puts "Please enter a song name or number"
  user_input = gets.chomp
  if user_input.to_s.include?(songs)
    puts "Playing #{songs[songs.index(user_input)]}"
  elsif user_input.to_i.is_a?(Numeric) and user_input.to_i <= songs.length and user_input.to_i >= 0
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif user_input.to_s.in?(songs)
    puts "Playing #{songs[songs.index(user_input)]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end