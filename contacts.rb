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

class Contacts
  def self.run
    people = []


    loop do
      command = ask("> ")

      if command == "list"

        puts "Name".ljust(20) + "Phone".rjust(12) + "Age".rjust(10)
        puts "-" * 42
        people.each do |person|
          puts person.full_name.ljust(20) + person.phone.rjust(12) +
          person.age.rjust(10)
        end

      elsif command == "add"
        person = Person.new

        person.first_name = ask("First Name: ")
        person.last_name  = ask("Last Name: ")
        person.phone      = ask("Phone: ")
        person.age        = ask("age: ")
        people.push(person)
      elsif command == "quit"
        break
      end
    end
  end
end

Contacts.run
