# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::UsageTest < MetronomeSDK::Test::ResourceTest
  def test_list_required_params
    response =
      @metronome.v1.usage.list(
        ending_before: "2021-01-03T00:00:00Z",
        starting_on: "2021-01-01T00:00:00Z",
        window_size: :HOUR
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::UsageListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::UsageListResponse::Data]),
        next_page: String | nil
      }
    end
  end

  def test_ingest
    response = @metronome.v1.usage.ingest

    assert_pattern do
      response => nil
    end
  end

  def test_list_with_groups_required_params
    response =
      @metronome.v1.usage.list_with_groups(
        billable_metric_id: "222796fd-d29c-429e-89b2-549fabda4ed6",
        customer_id: "04ca7e72-4229-4a6e-ab11-9f7376fccbcb",
        window_size: :HOUR
      )

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::UsageListWithGroupsResponse
    end

    assert_pattern do
      row => {
        ending_before: Time,
        group_key: String | nil,
        group_value: String | nil,
        starting_on: Time,
        value: Float | nil
      }
    end
  end
end
