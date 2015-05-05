class Student
  def initialize
    @count = 0
    @student_grade = "C"
  end

  def grade
    @student_grade
  end

  def study
    @count += 1
    case @count
      when 1
        @student_grade = "B"
      when 2
        @student_grade = "A"
      else
        @student_grade = "A"
    end


    if @count == 1
      @student_grade = "B"
    end
    if (@student_grade == "C")
      return @student_grade = "B"
    else
      if @student_grade == "B"
        return @student_grade = "A"
      end
    end
  end

  def slack_off
    @type += 1
  end
end

=begin
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'student'

class StudentTest < Minitest::Test
  def test_grade_is_mediocre
    student = Student.new
    assert_equal 'C', student.grade
  end

  def test_grade_can_improve
    student = Student.new
    student.study
    assert_equal "B", student.grade
    student.study
    assert_equal "A", student.grade
  end

  def test_as_good_as_it_gets
    student = Student.new
    3.times { student.study }
    assert_equal "A", student.grade
  end

  def test_grade_can_degrade
    student = Student.new
    student.slack_off
    assert_equal "D", student.grade
    student.slack_off
    assert_equal "F", student.grade
  end

  def test_grade_can_only_get_so_bad
    student = Student.new
    3.times { student.slack_off }
    assert_equal "F", student.grade
  end

  def test_slacking_off_is_immediately_noticable
  skip
    student = Student.new
    100.times { student.study }
    student.slack_off
    assert_equal "B", student.grade
  end

  def test_studying_helps_right_away
    skip
    student = Student.new
    100.times { student.slack_off }
    student.study
    assert_equal "D", student.grade
  end
end
=end
