# frozen_string_literal: true

require_relative "../../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Contracts::RateCards::ProductOrdersTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_update_required_params
    response = @metronome.v1.contracts.rate_cards.product_orders.update(
      product_moves: [
        {position: 0, product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"},
        {position: 1, product_id: "b086f2f4-9851-4466-9ca0-30d53e6a42ac"}
      ],
      rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
    )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_set_required_params
    response = @metronome.v1.contracts.rate_cards.product_orders.set(
      product_order: %w[13117714-3f05-48e5-a6e9-a66093f13b4d b086f2f4-9851-4466-9ca0-30d53e6a42ac],
      rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
    )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end
end
