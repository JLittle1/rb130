class Robot
  @@name_history = []

  attr_reader :name

  def initialize
    reset
  end

  def reset
    loop do
      @name = ''
      2.times { @name << rand(65..90).chr }
      3.times { @name << rand(0..9).to_s }
      unless @@name_history.include?(@name)
        @@name_history << @name
        break
      end
    end
  end
end
