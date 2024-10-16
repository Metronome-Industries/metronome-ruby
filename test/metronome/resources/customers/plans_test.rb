# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Customers::PlansTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list_required_params
    response = @metronome.customers.plans.list({customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"})
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_add_required_params
    response = @metronome.customers.plans.add(
      {
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        plan_id: "d2c06dae-9549-4d7d-bc04-b78dd3d241b8",
        starting_on: "2021-02-01T00:00:00Z"
      }
    )
    assert_kind_of(Metronome::Models::PlanAddResponse, response)
  end

  def test_end__required_params
    response = @metronome.customers.plans.end_(
      {
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_plan_id: "7aa11640-0703-4600-8eb9-293f535a6b74"
      }
    )
    assert_kind_of(Metronome::Models::PlanEndResponse, response)
  end

  def test_list_price_adjustments_required_params
    response = @metronome.customers.plans.list_price_adjustments(
      {
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_plan_id: "7aa11640-0703-4600-8eb9-293f535a6b74"
      }
    )
    assert_kind_of(Metronome::CursorPage, response)
  end
end
