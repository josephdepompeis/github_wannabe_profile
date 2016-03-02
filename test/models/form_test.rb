require 'test_helper'

class FormTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end


test "test pluggin in github name from form" do
  form_call = Form.new("josephdepompeis")
  id_number = form_call.as_json["response"].first.first
  stubbed = JSON.parse(File.read("joseph_call.json"))
  id_number_from_json = stubbed[0].first


  assert_equal id_number, id_number_from_json

  end

  test "get full name" do
    user_call = Form.new("josephdepompeis")
    assert_equal "joseph", user_call.full_name
  end

  test "get id number" do
    user_call = Form.new("josephdepompeis")
    assert_equal 12310101, user_call.user_id
  end

  test "get location" do
    user_call = Form.new("masonfmatthews")
    assert_equal "Durham, NC", user_call.location
  end

  test "get join date" do
    user_call = Form.new("masonfmatthews")
    assert_equal "2013-08-31T02:31:11Z", user_call.join_date
end
  test "get company" do
    user_call = Form.new("masonfmatthews")
    assert_equal "The Iron Yard", user_call.company
  end



end
