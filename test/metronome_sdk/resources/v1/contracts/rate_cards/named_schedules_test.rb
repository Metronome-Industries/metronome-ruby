# frozen_string_literal: true

require_relative "../../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Contracts::RateCards::NamedSchedulesTest < MetronomeSDK::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @metronome.v1.contracts.rate_cards.named_schedules.retrieve(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
        schedule_name: "my-schedule"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data])
      }
    end
  end

  def test_update_required_params
    response =
      @metronome.v1.contracts.rate_cards.named_schedules.update(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1",
        schedule_name: "my-schedule",
        starting_at: "2022-02-01T00:00:00Z",
        value: {my_key: "my_value"}
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_required_params
    response =
      @metronome.v1.contracts.rate_cards.named_schedules.list(
        customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1"
      )

    assert_pattern do
      response => MetronomeSDK::Internal::BodyCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse
    end

    assert_pattern do
      row => {
        contract_id: String,
        schedule_name: String,
        segments: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment]),
        properties: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end
end
