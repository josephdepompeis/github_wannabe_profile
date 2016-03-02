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
end
