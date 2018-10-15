Action: create example for full_name
Call your shot: test will fail
<rspec output>
Failures:

  1) Person _full_name should return a persons's full name
     Failure/Error: person = Person.new("John", "Doe")
     
     ArgumentError:
       wrong number of arguments (given 2, expected 0)
     # ./spec/person_spec.rb:31:in `initialize'
     ./spec/person_spec.rb:31:in `new'
     ./spec/person_spec.rb:31:in `block (3 levels) in <top (required)>

Finished in 0.00495 seconds (files took 0.10455 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/person_spec.rb:29  Person _full_name should return a persons's full name

Action: Implement initialize method
rb:

  def initialize (first_name, last_name)
  end

Call your Shot: test will fail
<rspec output>

 1) Person full_name should return a persons's full name
     Failure/Error: result = person.full_name
     
     NoMethodError:
       undefined method `full_name' for <Person:0x007f72f7d11f48>
     ./spec/person_spec.rb:33:in `block (3 levels) in <top (required)>'

Action: Implement full_name method
rb:

  def full_name
    _full_name
  end

  def _full_name
    return "#{first_name} #{last_name}"
  end


Call your shot: test will fail
<rspec output>
 1) Person full_name should return a persons's full name
     Failure/Error: return "#{first_name} #{last_name}"
     
     NameError:
       undefined local variable or method `first_name' for #<Person:0x007f067fd390a0>
      ./lib/person.rb:19:in `_full_name'
      ./lib/person.rb:11:in `full_name'
      ./spec/person_spec.rb:11:in `block (3 levels) in <top (required)>'


Action: attr_accessor for instance variables
Cal your shot: test will pass
rb:
  class Person
   attr_reader :first_name
   attr_reader :last_name
  
    def initialize (first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end
  end

<rspec output>
Finished in 0.00654 seconds (files took 0.10684 seconds to load)
1 example, 0 failures



Action: Create example for full_name_reversed
Call your shot: test will fail
<rspec output>
1) Person full_name_reversed should return person's full name with last name first
     Failure/Error: result = person.full_name_reversed
     
     NoMethodError:
       undefined method `full_name_reversed' for #<Person:0x007f1a4d1d1550 @first_name="John", @last_name="Doe">
     # ./spec/person_spec.rb:23:in `block (3 levels) in <top (required)>'

Action: create method full_name_reversed
Call your shot: test will fail
<rspec output>
  1) Person full_name_reversed should return person's full name with last name first
     Failure/Error: expect(result).to eq("Doe, John")
     
       expected: "Doe, John"
            got: nil
     
       (compared using ==)
     # ./spec/person_spec.rb:25:in `block (3 levels) in <top (required)>'

Action: implement full_name_reversed method
rb:

  def full_name_reversed
    _full_name_reversed
  end

  def _full_name_reversed
     return "#{last_name}, #{first_name}"
  end


Call your shot: test will pass
<rspec output>
  Finished in 0.00683 seconds (files took 0.10561 seconds to load)
2 examples, 0 failures


