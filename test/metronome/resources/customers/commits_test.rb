# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Customers::CommitsTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.customers.commits.create(
      access_schedule: {
        "schedule_items" => [
          {
            "amount" => 1000,
            "ending_before" => "2020-02-01T00:00:00.000Z",
            "starting_at" => "2020-01-01T00:00:00.000Z"
          }
        ]
      },
      customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
      priority: 100,
      product_id: "f14d6729-6a44-4b13-9908-9387f1918790",
      type: "PREPAID"
    )
    assert_kind_of(Metronome::Models::Customers::CommitCreateResponse, response)
  end

  def test_list_required_params
    response = @metronome.customers.commits.list(customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")
    assert_kind_of(Metronome::Models::Customers::CommitListResponse, response)
  end

  def test_update_end_date_required_params
    response = @metronome.customers.commits.update_end_date(
      commit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
      customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
    )
    assert_kind_of(Metronome::Models::Customers::CommitUpdateEndDateResponse, response)
  end
end
