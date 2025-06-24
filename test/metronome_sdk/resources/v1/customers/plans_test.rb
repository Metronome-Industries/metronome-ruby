# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::PlansTest < MetronomeSDK::Test::ResourceTest
  def test_list_required_params
    response = @metronome.v1.customers.plans.list(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::Customers::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]),
        plan_description: String,
        plan_id: String,
        plan_name: String,
        starting_on: Time,
        ending_before: Time | nil,
        net_payment_terms_days: Float | nil,
        trial_info: MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo | nil
      }
    end
  end

  def test_add_required_params
    response =
      @metronome.v1.customers.plans.add(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        plan_id: "d2c06dae-9549-4d7d-bc04-b78dd3d241b8",
        starting_on: "2021-02-01T00:00:00Z"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::PlanAddResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_end__required_params
    response =
      @metronome.v1.customers.plans.end_(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_plan_id: "7aa11640-0703-4600-8eb9-293f535a6b74"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::PlanEndResponse
    end

    assert_pattern do
      response => {
        **_
      }
    end
  end

  def test_list_price_adjustments_required_params
    response =
      @metronome.v1.customers.plans.list_price_adjustments(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_plan_id: "7aa11640-0703-4600-8eb9-293f535a6b74"
      )

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse
    end

    assert_pattern do
      row => {
        charge_id: String,
        charge_type: MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::ChargeType,
        prices: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanListPriceAdjustmentsResponse::Price]),
        start_period: Float,
        quantity: Float | nil
      }
    end
  end
end
