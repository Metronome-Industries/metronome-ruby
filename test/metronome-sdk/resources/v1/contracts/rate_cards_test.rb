# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Contracts::RateCardsTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.v1.contracts.rate_cards.create(name: "My Rate Card")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.v1.contracts.rate_cards.retrieve(id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data
      }
    end
  end

  def test_update_required_params
    response = @metronome.v1.contracts.rate_cards.update(rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_list
    response = @metronome.v1.contracts.rate_cards.list

    assert_pattern do
      response => MetronomeSDK::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => MetronomeSDK::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => MetronomeSDK::Models::V1::Contracts::RateCardListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        created_by: String,
        name: String,
        aliases: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias]) | nil,
        credit_type_conversions: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion]) | nil,
        custom_fields: ^(MetronomeSDK::HashOf[String]) | nil,
        description: String | nil,
        fiat_credit_type: MetronomeSDK::Models::CreditTypeData | nil
      }
    end
  end

  def test_retrieve_rate_schedule_required_params
    response = @metronome.v1.contracts.rate_cards.retrieve_rate_schedule(
      rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe",
      starting_at: "2024-01-01T00:00:00.000Z"
    )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data]),
        next_page: String | nil
      }
    end
  end
end
