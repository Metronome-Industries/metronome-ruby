# frozen_string_literal: true

require_relative "../../../test_helper"

class Metronome::Test::Resources::Contracts::RateCards::RatesTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list_required_params
    response = @metronome.contracts.rate_cards.rates.list(
      {at: "2024-01-01T00:00:00.000Z", rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"}
    )
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_add_required_params
    response = @metronome.contracts.rate_cards.rates.add(
      {
        entitled: true,
        product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        rate_type: "FLAT",
        starting_at: "2020-01-01T00:00:00.000Z"
      }
    )
    assert_kind_of(Metronome::Models::RateAddResponse, response)
  end

  def test_add_many
    response = @metronome.contracts.rate_cards.rates.add_many
    assert_kind_of(Metronome::Models::RateAddManyResponse, response)
  end
end
