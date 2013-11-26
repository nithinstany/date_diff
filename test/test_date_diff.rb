require 'helper'
require 'date'

class TestDateDiff < MiniTest::Unit::TestCase

  def test_date_diff_method

    [
      [Date.parse('2013-01-01'), Date.parse('2013-01-01'), {:year => 0, :month => 0, :day => 0, :difference => ""}],
      [Date.parse('2013-01-01'), Date.parse('2013-01-02'), {:year => 0, :month => 0, :day => 1, :difference => "1 day"}],
      [Date.parse('2013-01-01'), Date.parse('2013-02-01'), {:year => 0, :month => 1, :day => 0, :difference => "1 month"}],
      
      [Date.parse('2013-01-01'), Date.parse('2013-03-03'), {:year => 0, :month => 2, :day => 2, :difference => "2 months 2 days"}],    

      [Date.parse('2012-01-01'), Date.parse('2013-01-01'), {:year => 1, :month => 0, :day => 0, :difference => "1 year"}],
      [Date.parse('2000-01-01'), Date.parse('2013-01-01'), {:year => 13, :month => 0, :day => 0, :difference => "13 years"}],
      [Date.parse('2013-08-28'), Date.parse('2014-08-28'), {:year => 1, :month => 0, :day => 0, :difference => "1 year"}],
      
      [Date.parse('2000-01-01'), Date.parse('2013-06-19'), {:year => 13, :month => 5, :day => 18, :difference => "13 years 5 months 18 days"}],
      [Date.parse('2013-11-19'), Date.parse('2013-11-25'), {:year => 0, :month => 0, :day => 6, :difference => "6 days"}],
      [Date.parse('2012-11-27'), Date.parse('2013-11-25'), {:year => 0, :month => 11, :day => 28, :difference => "11 months 28 days"}]  
     

    ].each do |input|
      assert_equal(Date.diff(input[0], input[1]), input[2])
    end

  end
end
