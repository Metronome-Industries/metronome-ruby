# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::PlansTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_list
    response = @metronome.customers.plans.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_add_required_params
    response = @metronome.customers.plans.add(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      {plan_id: "d2c06dae-9549-4d7d-bc04-b78dd3d241b8", starting_on: "2021-02-01T00:00:00Z"}
    )
    assert_kind_of(Metronome::Models::PlanAddResponse, response)
  end

  def test_end_
    response = @metronome.customers.plans.end_(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )
    assert_kind_of(Metronome::Models::PlanEndResponse, response)
  end

  def test_list_price_adjustments
    response = @metronome.customers.plans.list_price_adjustments(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )
    assert_kind_of(Metronome::CursorPage, response)
  end
end
