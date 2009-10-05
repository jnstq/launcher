require 'test_helper'

class CountDownTest < ActiveSupport::TestCase

  test "setuped with launching date" do
    assert_equal Time.parse("July 9, 2020 00:00:00"), Launcher::CountDown.launching_date
  end
  
  test "returns secounds" do
    Launcher::CountDown.stubs(:launching_date => 1.second.ago)
    assert_equal "Lanseras om 0 dagar 0 timmar 0 minuter och 1 sekunder", Launcher::CountDown.new.to_sentence
  end
  
  test "returns minutes" do
    Launcher::CountDown.stubs(:launching_date => 1.minute.ago)
    assert_equal "Lanseras om 0 dagar 0 timmar 1 minuter och 0 sekunder", Launcher::CountDown.new.to_sentence
  end
  
  test "returns hours" do
    Launcher::CountDown.stubs(:launching_date => 1.hour.ago)
    assert_equal "Lanseras om 0 dagar 1 timmar 0 minuter och 0 sekunder", Launcher::CountDown.new.to_sentence
  end
  
  test "returns days" do
    Launcher::CountDown.stubs(:launching_date => 1.day.ago)
    assert_equal "Lanseras om 1 dagar 0 timmar 0 minuter och 0 sekunder", Launcher::CountDown.new.to_sentence
  end
  
end
