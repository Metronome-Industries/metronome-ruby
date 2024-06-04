# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::UsageTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_list_required_params
    response = @metronome.usage.list(
      {ending_before: "2021-01-03T00:00:00Z", starting_on: "2021-01-01T00:00:00Z", window_size: "day"}
    )
    assert_kind_of(Metronome::Models::UsageListResponse, response)
  end

  def test_list_with_groups_required_params
    response = @metronome.usage.list_with_groups(
      {billable_metric_id: "222796fd-d29c-429e-89b2-549fabda4ed6", customer_id: "04ca7e72-4229-4a6e-ab11-9f7376fccbcb", window_size: "day"}
    )
    assert_kind_of(Metronome::Models::UsageListWithGroupsResponse, response)
  end
end
