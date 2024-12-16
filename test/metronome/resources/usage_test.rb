# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::UsageTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list_required_params
    response = @metronome.usage.list(
      ending_before: "2021-01-03T00:00:00Z",
      starting_on: "2021-01-01T00:00:00Z",
      window_size: "HOUR"
    )

    assert_pattern do
      response => Metronome::Models::UsageListResponse
    end
  end

  def test_ingest_required_params
    response = @metronome.usage.ingest(
      usage: [
        {
          "customer_id" => "team@example.com",
          "event_type" => "heartbeat",
          "timestamp" => "2021-01-01T00:00:00Z",
          "transaction_id" => "2021-01-01T00:00:00Z_cluster42"
        }
      ]
    )

    assert_pattern do
      response => nil
    end
  end

  def test_list_with_groups_required_params
    response = @metronome.usage.list_with_groups(
      billable_metric_id: "222796fd-d29c-429e-89b2-549fabda4ed6",
      customer_id: "04ca7e72-4229-4a6e-ab11-9f7376fccbcb",
      window_size: "HOUR"
    )

    assert_pattern do
      response => Metronome::CursorPage
    end
  end
end
