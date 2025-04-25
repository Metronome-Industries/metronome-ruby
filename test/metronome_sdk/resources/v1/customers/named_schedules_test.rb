# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::NamedSchedulesTest < MetronomeSDK::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @metronome.v1.customers.named_schedules.retrieve(
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
        schedule_name: "my-schedule"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::NamedScheduleRetrieveResponse::Data])
      }
    end
  end

  def test_update_required_params
    response =
      @metronome.v1.customers.named_schedules.update(
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
        schedule_name: "my-schedule",
        starting_at: "2022-02-01T00:00:00Z",
        value: {my_key: "my_value"}
      )

    assert_pattern do
      response => nil
    end
  end
end
