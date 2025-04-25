# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::BillingConfigTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.customers.billing_config.create(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        billing_provider_type: :stripe,
        billing_provider_customer_id: "cus_AJ6y20bjkOOayM"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_required_params
    response =
      @metronome.v1.customers.billing_config.retrieve(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        billing_provider_type: :stripe
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data
      }
    end
  end

  def test_delete_required_params
    response =
      @metronome.v1.customers.billing_config.delete(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        billing_provider_type: :stripe
      )

    assert_pattern do
      response => nil
    end
  end
end
