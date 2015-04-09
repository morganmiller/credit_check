class CreditChecker

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def arrays_for_days
    card_number.chars.reverse
  end

  def double_it(i)
    (arrays_for_days[i].to_i * 2).to_s
  end

  def begin_compute
    arrays_for_days.each_index.map do |i|
      if i.odd? && double_it(i).length == 2
        temp = double_it(i)
        arrays_for_days[i] = (temp[0].to_i + temp[1].to_i).to_s
      elsif i.odd?
        arrays_for_days[i] = double_it(i)
      else
        arrays_for_days[i] = arrays_for_days[i]
      end
    end
  end

  def numbers_to_add
    begin_compute.map { |n| n.to_i }
  end

  def sum_it_up
    numbers_to_add.reduce(0) { |sum, n| sum += n; sum }
  end

  def will_it_blend?
    sum_it_up % 10 == 0
  end

  def check_validity
    if will_it_blend?
      "The number is valid!"
    else
      "The number is invalid!"
    end
  end

end
