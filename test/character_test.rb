require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lib/character'

class CharacterTest < Minitest::Test

  def setup

    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_does_it_exist


    assert_instance_of Character, @kitt
  end

  def test_name_instance_variable

    assert_equal "KITT", @kitt.name
  end

  def test_actor_instance_variable

    assert_equal "William Daniels", @kitt.actor
  end

  def test_salary_instance_variable

    assert_equal 1_000_000, @kitt.salary
  end

end
