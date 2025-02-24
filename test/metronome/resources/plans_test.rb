# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::PlansTest < Minitest::Test
  def before_all
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

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        description: String,
        name: String,
        custom_fields: ^(Metronome::HashOf[String]) | nil
      }
    end
  end

  def test_get_details_required_params
    response = @metronome.plans.get_details(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::Models::PlanGetDetailsResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::PlanDetail
      }
    end
  end

  def test_list_charges_required_params
    response = @metronome.plans.list_charges(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::PlanListChargesResponse
    end

    assert_pattern do
      row => {
        id: String,
        charge_type: Metronome::Models::PlanListChargesResponse::ChargeType,
        credit_type: Metronome::Models::CreditTypeData,
        custom_fields: ^(Metronome::HashOf[String]),
        name: String,
        prices: ^(Metronome::ArrayOf[Metronome::Models::PlanListChargesResponse::Price]),
        product_id: String,
        product_name: String,
        quantity: Float | nil,
        start_period: Float | nil,
        tier_reset_frequency: Float | nil,
        unit_conversion: Metronome::Models::PlanListChargesResponse::UnitConversion | nil
      }
    end
  end

  def test_list_customers_required_params
    response = @metronome.plans.list_customers(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::PlanListCustomersResponse
    end

    assert_pattern do
      row => {
        customer_details: Metronome::Models::CustomerDetail,
        plan_details: Metronome::Models::PlanListCustomersResponse::PlanDetails
      }
    end
  end
end
