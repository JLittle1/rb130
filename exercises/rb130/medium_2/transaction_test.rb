require 'minitest/autorun'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    input = StringIO.new("20\n")
    output = StringIO.new
    transaction = Transaction.new(19.99)
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 20, transaction.amount_paid
  end
end