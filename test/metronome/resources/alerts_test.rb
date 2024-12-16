# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::AlertsTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.alerts.create(
      alert_type: "low_credit_balance_reached",
      name: "$100 spend threshold reached",
      threshold: 10_000
    )

    assert_pattern do
      response => Metronome::Models::AlertCreateResponse
    end
  end

  def test_archive_required_params
    response = @metronome.alerts.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")

    assert_pattern do
      response => Metronome::Models::AlertArchiveResponse
    end
  end
end
