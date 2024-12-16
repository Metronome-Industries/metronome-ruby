# frozen_string_literal: true

require_relative "../../../test_helper"

class Metronome::Test::Resources::Contracts::RateCards::ProductOrdersTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_update_required_params
    response = @metronome.contracts.rate_cards.product_orders.update(
      product_moves: [
        {"position" => 0, "product_id" => "13117714-3f05-48e5-a6e9-a66093f13b4d"},
        {"position" => 1, "product_id" => "b086f2f4-9851-4466-9ca0-30d53e6a42ac"}
      ],
      rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
    )

    assert_pattern do
      response => Metronome::Models::Contracts::RateCards::ProductOrderUpdateResponse
    end
  end

  def test_set_required_params
    response = @metronome.contracts.rate_cards.product_orders.set(
      product_order: %w[13117714-3f05-48e5-a6e9-a66093f13b4d b086f2f4-9851-4466-9ca0-30d53e6a42ac],
      rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
    )

    assert_pattern do
      response => Metronome::Models::Contracts::RateCards::ProductOrderSetResponse
    end
  end
end
