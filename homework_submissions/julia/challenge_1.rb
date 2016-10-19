class Person
  attr_accessor :first_name, :last_name, :occupation
  def initialize(first_name, last_name, occupation)

    @first_name = first_name
    @last_name = last_name
    @occupation = occupation
  end

    def introduction
      puts "#{@first_name} #{@last_name} has been a #{@occupation} his whole career. "
    end
end

good_guy = Person.new("jim", "gordon", "detective")
new_person.introduction
puts good_guy
