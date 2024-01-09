require_relative "joke"

class Dad
  def initialize
    @jokes = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome Daddy O's"
      puts "1. Add a joke"
      puts "2. Show me all jokes!"
      puts "3. Se ya latter alligator"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_joke
      when 2
        list_jokes
      when 3
        puts "After a while crocodile"
        break
      else
        puts "Nope. Try again."
      end
    end
  end

  private

  def add_joke
    print "Enter joke (no punch line): "
    body = gets.chomp
    print "Enter punchline: "
    punchline = gets.chomp
    @jokes << Joke.new(body, punchline)
    puts "😆😆😆"
  end

  def list_jokes
    puts "Jokes in the collection:"
    @jokes.each do |joke|
      puts joke
    end
  end
end
