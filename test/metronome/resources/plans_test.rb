# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::PlansTest < Minitest::Test
  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @metronome.plans.list

    assert_pattern do
      response => Metronome::CursorPage
    end
  end

  def test_get_details_required_params
    response = @metronome.plans.get_details(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::Models::PlanGetDetailsResponse
    end
  end

  def test_list_charges_required_params
    response = @metronome.plans.list_charges(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end
  end

  def test_list_customers_required_params
    response = @metronome.plans.list_customers(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end
  end
end
