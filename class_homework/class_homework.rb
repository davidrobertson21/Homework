class Student

  def initialize(input_name, input_cohort)
    @student_name = input_name
    @cohort = input_cohort
  end


#GETTERS

def get_student_name
  return @student_name
end


def cohort
  return @cohort
end

#SETTERS


def set_student_name(name)
  @student_name = name
end


def set_student_cohort(cohort)
  @cohort = cohort
end


def talk()
  return "I can talk"
end


def say_favourite_language(programming_language)
  return "I love #{programming_language}"
end

end



