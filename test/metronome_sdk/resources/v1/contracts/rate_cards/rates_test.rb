# frozen_string_literal: true

require_relative "../../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Contracts::RateCards::RatesTest < MetronomeSDK::Test::ResourceTest
  def test_list_required_params
    response =
      @metronome.v1.contracts.rate_cards.rates.list(
        at: "2024-01-01T00:00:00.000Z",
        rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"
      )

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse
    end

    assert_pattern do
      row => {
        entitled: MetronomeSDK::Internal::Type::Boolean,
        product_custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]),
        product_id: String,
        product_name: String,
        product_tags: ^(MetronomeSDK::Internal::Type::ArrayOf[String]),
        rate: MetronomeSDK::Models::Rate,
        starting_at: Time,
        commit_rate: MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate | nil,
        ending_before: Time | nil,
        pricing_group_values: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_add_required_params
    response =
      @metronome.v1.contracts.rate_cards.rates.add(
        entitled: true,
        product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        rate_type: :FLAT,
        starting_at: "2020-01-01T00:00:00.000Z"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data
      }
    end
  end

  def test_add_many_required_params
    response =
      @metronome.v1.contracts.rate_cards.rates.add_many(
        rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        rates: [
          {
            entitled: true,
            product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
            rate_type: :FLAT,
            starting_at: "2020-01-01T00:00:00.000Z"
          },
          {
            entitled: true,
            product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
            rate_type: :FLAT,
            starting_at: "2020-01-01T00:00:00.000Z"
          }
        ]
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end
end
