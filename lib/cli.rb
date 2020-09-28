class CLI 

def menu 
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Welcome to CatBreeds!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Please enter 'breeds' to see a list of all breeds of domestic cats or 'exit' to exit."
    puts " "
    @breeds = gets.strip.downcase

    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end


def prompt
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Enter a breed's number to see more information about your chosen breed, 'breeds' to go back to the list of breeds, or 'exit' to exit."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end


def print_breed(breed)
    puts "Name: #{breed.name}"
    puts "Temperament: #{breed.temperament}"
    puts "Description: #{breed.description}"
end








end