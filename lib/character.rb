class Character

  attr_reader :name,
              :actor,
              :salary

  def initialize(actor_profile_hash)
    @name = actor_profile_hash[:name]
    @actor = actor_profile_hash[:actor]
    @salary = actor_profile_hash[:salary]
  end





end
