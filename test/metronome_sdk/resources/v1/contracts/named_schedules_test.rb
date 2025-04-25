# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Contracts::NamedSchedulesTest < MetronomeSDK::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @metronome.v1.contracts.named_schedules.retrieve(
        rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        schedule_name: "my-schedule"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::NamedScheduleRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::NamedScheduleRetrieveResponse::Data])
      }
    end
  end

  def test_update_required_params
    response =
      @metronome.v1.contracts.named_schedules.update(
        rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        schedule_name: "my-schedule",
        starting_at: "2022-02-01T00:00:00Z",
        value: {my_key: "my_value"}
      )

    assert_pattern do
      response => nil
    end
  end
end
