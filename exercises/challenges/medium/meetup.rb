require 'date'

class Meetup
  WEEKDAYS = { 'monday' => 1, 'tuesday' => 2, 'wednesday' => 3, 'thursday' => 4,
               'friday' => 5, 'saturday' => 6, 'sunday' => 7 }

  def initialize(year, month)
    @date = Date.civil(year, month)
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def day(weekday, ordinal)
    date = first(weekday)
    case ordinal.downcase
    when 'first' then date
    when 'second' then date + 7
    when 'third' then date + 14
    when 'fourth' then date + 21
    when 'fifth' then fifth(date)
    when 'teenth' then teenth(date)
    when 'last' then last(date)
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  private

  def first(weekday)
    date = @date
    date += 1 until date.cwday == WEEKDAYS[weekday.downcase]
    date
  end

  def fifth(date)
    date + 28 if (date + 28).month == date.month
  end

  def teenth(date)
    date += 7 until (13..19).include?(date.day)
    date
  end

  def last(date)
    date += 7 until (date + 7).month != date.month
    date
  end
end
