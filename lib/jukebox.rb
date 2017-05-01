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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(input)
  song = gets.chomp
  if input.include?(song)
    puts "Playing #{song}"
  else
    num = song.to_i
    if num<1 || num>input.length
      puts "Invalid input, please try again"
    else
      puts "Playing #{input[num-1]}"
    end
  end
end

def list(songs)
  songs.each do |el|
    puts el
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  puts "Please enter a command:"
  input = gets.chomp

      if input == "help"
        help
      elsif input == "list"
        list
      elsif input == "play"
        play
      elsif input.start_with?("play")
        song = input[5..-1]
        play song
      elsif input == 'exit'
        exit_jukebox
      end
    
end
