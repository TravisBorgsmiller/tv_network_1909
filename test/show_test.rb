require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lib/character'
require_relative '../lib/character'


class ShowTest < Minitest::Test

  def setup

    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
  end

  def test_does_kitt_instance_exist

  end

  def test_does_michael_knight_instance_exist

  end

  def test_does_knight_rider_exist

  end

  def test_does_name_instance_variable_work

  end

  def test_does_creator_instance_variable_work

  end

  def test_does_characters_instance_variable_work

  end

  def test_does_total_salary_instance_variable_work

  end

end
