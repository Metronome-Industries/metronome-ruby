# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::PlansTest < MetronomeSDK::Test::ResourceTest
  def test_list
    response = @metronome.v1.plans.list

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        description: String,
        name: String,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_get_details_required_params
    response = @metronome.v1.plans.get_details(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::PlanGetDetailsResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data
      }
    end
  end

  def test_list_charges_required_params
    response = @metronome.v1.plans.list_charges(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::PlanListChargesResponse
    end

    assert_pattern do
      row => {
        id: String,
        charge_type: MetronomeSDK::Models::V1::PlanListChargesResponse::ChargeType,
        credit_type: MetronomeSDK::Models::V1::PlanListChargesResponse::CreditType,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]),
        name: String,
        prices: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PlanListChargesResponse::Price]),
        product_id: String,
        product_name: String,
        quantity: Float | nil,
        start_period: Float | nil,
        tier_reset_frequency: Float | nil,
        unit_conversion: MetronomeSDK::Models::V1::PlanListChargesResponse::UnitConversion | nil
      }
    end
  end

  def test_list_customers_required_params
    response = @metronome.v1.plans.list_customers(plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::PlanListCustomersResponse
    end

    assert_pattern do
      row => {
        customer_details: MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails,
        plan_details: MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails
      }
    end
  end
end
