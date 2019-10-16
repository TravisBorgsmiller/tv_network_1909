require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lib/character'
require_relative '../lib/show'


class ShowTest < Minitest::Test

  def setup

    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_does_kitt_instance_exist

    assert_instance_of Character, @kitt
  end

  def test_does_michael_knight_instance_exist

    assert_instance_of Character, @michael_knight
  end

  def test_does_knight_rider_exist

    assert_instance_of Show, @knight_rider
  end

  def test_does_name_instance_variable_work

    assert_equal "Knight Rider", @knight_rider.name
  end

  def test_does_creator_instance_variable_work

    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_does_characters_method_work

    assert_equal [@michael_knight, @kitt], @knight_rider.characters
  end

  def test_does_total_salary_instance_variable_work

    assert_equal 2600000, @knight_rider.total_salary
  end

end
