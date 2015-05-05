class Wallet
  def initialize
    @wallet = []
    @hash_value = {:penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100}
  end

  def cents
    if @wallet.length == 0
      return 0
    else
      @total = 0
      @wallet.each do |item|
        @total += @hash_value[item]
      end
      return @total
    end
  end

  def << (item)
    @wallet << item
  end

  def take(*args)
    args.each do |i|
      hash = Hash[@wallet.map.with_index.to_a] # => {"a"=>0, "b"=>1, "c"=>2}
      @index = hash[i]
      @wallet.delete(@index)
    end
  end
end

=begin
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'wallet'

class WalletTest < Minitest::Test
  def test_wallet_starts_at_zero
    wallet = Wallet.new
    assert_equal 0, wallet.cents
  end

  def test_add_pennies
    skip
    wallet = Wallet.new
    wallet << :penny
    assert_equal 1, wallet.cents
    3.times { wallet << :penny }
    assert_equal 4, wallet.cents
  end

  def test_add_nickels
    skip
    wallet = Wallet.new
    wallet << :nickel
    assert_equal 5, wallet.cents
    3.times { wallet << :nickel }
    assert_equal 20, wallet.cents
  end

  def test_add_dimes
    skip
    wallet = Wallet.new
    wallet << :dime
    assert_equal 10, wallet.cents
    3.times { wallet << :dime }
    assert_equal 40, wallet.cents
  end

  def test_add_quarters
    skip
    wallet = Wallet.new
    wallet << :quarter
    assert_equal 25, wallet.cents
    3.times { wallet << :quarter }
    assert_equal 100, wallet.cents
  end

  def test_add_dollars
    skip
    wallet = Wallet.new
    wallet << :dollar
    assert_equal 100, wallet.cents
    3.times { wallet << :dollar }
    assert_equal 400, wallet.cents
  end

  def test_take_coins_out
    skip
    wallet = Wallet.new
    wallet << :penny
    wallet << :penny
    wallet << :penny
    wallet << :penny

    wallet.take(:penny)
    assert_equal 3, wallet.cents
    wallet.take(:penny, :penny)
    assert_equal 1, wallet.cents
  end

  def test_take_various_coins_out
    skip
    wallet = Wallet.new
    wallet << :penny
    wallet << :dime
    wallet << :quarter
    wallet << :quarter

    wallet.take(:dime, :quarter)
    assert_equal 26, wallet.cents
  end

  def test_ignore_coins_that_are_not_there
    skip
    wallet = Wallet.new
    wallet << :penny
    wallet.take(:dime)
    assert_equal 1, wallet.cents
  end
end
=end
