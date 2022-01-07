class Human

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def is_old?
    if @age > 60
      true
    else
      false
    end
  end

  def return_full_name
    if @age > 60
      "#{@first_name} #{@last_name}"
    else
      "#{@first_name}"
    end
  end
end
