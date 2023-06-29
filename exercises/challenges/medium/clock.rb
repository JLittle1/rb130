class Clock
  def self.at(hour, minute = 0)
    time = (hour * 60) + minute
    new(time)
  end

  def initialize(time)
    @time = time % 1440
  end

  def +(minutes)
    new_time = time + minutes
    Clock.new(new_time)
  end

  def -(minutes)
    new_time = time - minutes
    Clock.new(new_time)
  end

  def ==(other)
    time == other.time
  end

  def to_s
    hour, minute = time.divmod(60)
    format("%02d:%02d", hour, minute)
  end

  protected

  attr_reader :time
end
