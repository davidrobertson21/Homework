require ('minitest/autorun')
require_relative('./class_homework')

class TestStudent < MiniTest::Test

def setup
  @student = Student.new("David", 11)
end

#GETTERS

def test_get_name()
  assert_equal("David", @student.get_student_name)
end

def test_get_cohort()
  assert_equal(11, @student.cohort)
end

#SETTERS

def test_set_student_name
  @student.set_student_name("Ian")
  assert_equal("Ian", @student.get_student_name)
end

def test_set_student_cohort
  @student.set_student_cohort(10)
  assert_equal(10, @student.cohort)
end

def test_say_favourite_language
assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
end

end



