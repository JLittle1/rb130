require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
  end

  def test_accept_money
    register = CashRegister.new(0)
    transaction = Transaction.new(10)
    transaction.amount_paid = 10
    register.accept_money(transaction)
    assert_equal 10, register.total_money
  end

  def test_change
    register = CashRegister.new(0)
    transaction = Transaction.new(10)
    transaction.amount_paid = 11
    assert_equal 1, register.change(transaction)
  end

  def test_give_receipt
    register = CashRegister.new(0)
    transaction = Transaction.new(450)
    assert_output("You've paid $450.\n") { register.give_receipt(transaction) }
  end
end