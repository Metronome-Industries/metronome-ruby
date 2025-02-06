# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Contracts::NamedSchedulesTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve_required_params
    response = @metronome.contracts.named_schedules.retrieve(
      rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      schedule_name: "my-schedule"
    )

    assert_pattern do
      response => Metronome::Models::Contracts::NamedScheduleRetrieveResponse
    end
  end

  def test_update_required_params
    response = @metronome.contracts.named_schedules.update(
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
