class Person
   attr_reader :first_name
   attr_reader :last_name
  
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    _full_name
  end

  def full_name_reversed
    _full_name_reversed
  end

  private

  def _full_name
    return "#{first_name} #{last_name}"
  end

  def _full_name_reversed
     return "#{last_name}, #{first_name}"
  end

end


