class Vehicle
  # State?
  # - color
  # - engine started?

  # Behavior?
  # - start engine
  # - is engine started?
  # - color

  attr_reader :color

  def initialize(color)
    @color = color
    @engine_started = false
  end

  def start_engine!
    @engine_started = true
  end

  def engine_started?
    @engine_started
  end
end
