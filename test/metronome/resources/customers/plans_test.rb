# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Customers::PlansTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list_required_params
    response = @metronome.customers.plans.list(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::Customers::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        custom_fields: ^(Metronome::HashOf[String]),
        plan_description: String,
        plan_id: String,
        plan_name: String,
        starting_on: Time,
        ending_before: Time | nil,
        net_payment_terms_days: Float | nil,
        trial_info: Metronome::Models::Customers::PlanListResponse::TrialInfo | nil
      }
    end
  end

  def test_add_required_params
    response = @metronome.customers.plans.add(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      plan_id: "d2c06dae-9549-4d7d-bc04-b78dd3d241b8",
      starting_on: "2021-02-01T00:00:00Z"
    )

    assert_pattern do
      response => Metronome::Models::Customers::PlanAddResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end

  def test_end__required_params
    response = @metronome.customers.plans.end_(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      customer_plan_id: "7aa11640-0703-4600-8eb9-293f535a6b74"
    )

    assert_pattern do
      response => Metronome::Models::Customers::PlanEndResponse
    end

    assert_pattern do
      response => {
        **_
      }
    end
  end

  def test_list_price_adjustments_required_params
    response = @metronome.customers.plans.list_price_adjustments(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      customer_plan_id: "7aa11640-0703-4600-8eb9-293f535a6b74"
    )

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::Customers::PlanListPriceAdjustmentsResponse
    end

    assert_pattern do
      row => {
        charge_id: String,
        charge_type: Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::ChargeType,
        prices: ^(Metronome::ArrayOf[Metronome::Models::Customers::PlanListPriceAdjustmentsResponse::Price]),
        start_period: Float,
        quantity: Float | nil
      }
    end
  end
end
