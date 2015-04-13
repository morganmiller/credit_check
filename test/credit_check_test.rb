gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'

class CreditCheckerTest < Minitest::Test

  def test_does_it_exist
    my_card = CreditChecker.new('5541808923795240')
    assert my_card
  end

  def test_reverse_array
    my_card = CreditChecker.new('5541808923795240')
    result = my_card.reverse_it
    assert_equal ["0", "4", "2", "5", "9", "7", "3", "2", "9", "8", "0", "8", "1", "4", "5", "5"], result
  end

  def test_begin_compute_returns_new_array
    my_card = CreditChecker.new('5541808923795240')
    result = my_card.begin_compute
    assert_equal ["0", "8", "2", "1", "9", "5", "3", "4", "9", "7", "0", "7", "1", "8", "5", "1"], result
  end

  def test_they_become_numbers
    my_card = CreditChecker.new('5541808923795240')
    result = my_card.numbers_to_add
    assert_equal [0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1], result
  end

  def test_sum_works
    my_card = CreditChecker.new('5541808923795240')
    result = my_card.sum_it_up
    assert_equal 70, result
  end

  def test_will_it_blend_is_true
    my_card = CreditChecker.new('5541808923795240')
    assert my_card.will_it_blend?
  end

  def test_will_it_blend_is_false
    my_card = CreditChecker.new('5541801923795240')
    refute my_card.will_it_blend?
  end

  def test_check_validity_valid_num
    my_card = CreditChecker.new('5541808923795240')
    assert_equal "The number is valid!", my_card.check_validity
  end

  def test_check_validity_invalid_num
    my_card = CreditChecker.new('5541801923795240')
    assert_equal "The number is invalid!", my_card.check_validity
  end


end
