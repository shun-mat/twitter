# class JudgingMachine
#
#   # 文字列が数字だけで構成されていれば true を返す
#   def number?(str)
#     # 文字列の先頭(\A)から末尾(\z)までが「0」から「9」の文字か
#     nil != (str =~ /\A[0-9]+\z/)
#   end
#
# end
require 'test/unit'
require './judging_machine'

class JudgingMachineTest < Test::Unit::TestCase
  def test_number?
    m = JudgingMachine.new
    assert_true(m.number?('1'))
    assert_true(m.number?('12'))
    assert_true(m.number?('012'))
    assert_false(m.number?(''))
    assert_false(m.number?('+1'))
    assert_false(m.number?('-1'))
    assert_false(m.number?('abc'))
    assert_false(m.number?('123abc'))
    assert_false(m.number?('abc123'))
    assert_false(m.number?("123\n"))
    assert_false(m.number?("123\n123"))
    assert_false(m.number?("123\nabc"))
    assert_false(m.number?("\n123"))
    assert_false(m.number?('１２３')) # 全角
    assert_false(m.number?('一二三')) # 漢数字
    assert_false(m.number?('ⅠⅡⅢ')) # ローマ数字
    assert_false(m.number?(nil)) # nil
    assert_false(m.number?(Object.new)) # 文字列じゃない
    assert_false(m.number?(Array.new)) # 文字列じゃない
  end
end
