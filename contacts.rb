require 'highline/import'

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :age
  attr_accessor :phone

  def full_name
    first_name + " " + last_name
  end
end

def person_age
    first_name + " is " + age
  end
end

class Contacts
  def self.run
    people = []

    when :columns_across
      max_length = actual_length(
        items.max { |a, b| actual_length(a) <=> actual_length(b)})


    loop do
      command = ask("> ")

      if command == "list"
        puts "Name".ljust(30) + "Phone".rjust(12)
        puts "-" * 42
        people.each do |person|
          puts person.full_name.ljust(30) + person.phone.rjust(12)
        end

      elsif command == "add"
        person = Person.new

        person.first_name = ask("First Name: ")
        person.last_name  = ask("Last Name: ")
        person.phone      = ask("Phone: ")

        people.push(person)
      elsif command == "quit"
        break
      end
    end
  end
end

Contacts.run
