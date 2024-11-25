# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Contracts::RateCardsTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.contracts.rate_cards.create({name: "My Rate Card"})
    assert_kind_of(Metronome::Models::Contracts::RateCardCreateResponse, response)
  end

  def test_retrieve_required_params
    response = @metronome.contracts.rate_cards.retrieve({id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"})
    assert_kind_of(Metronome::Models::Contracts::RateCardRetrieveResponse, response)
  end

  def test_update_required_params
    response = @metronome.contracts.rate_cards.update({rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"})
    assert_kind_of(Metronome::Models::Contracts::RateCardUpdateResponse, response)
  end

  def test_list_required_params
    response = @metronome.contracts.rate_cards.list({body: {}})
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_retrieve_rate_schedule_required_params
    response = @metronome.contracts.rate_cards.retrieve_rate_schedule(
      {rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe", starting_at: "2024-01-01T00:00:00.000Z"}
    )
    assert_kind_of(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse, response)
  end
end
