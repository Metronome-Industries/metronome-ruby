# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::BillingConfigTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.v1.customers.billing_config.create(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      billing_provider_type: :aws_marketplace,
      billing_provider_customer_id: "cus_AJ6y20bjkOOayM"
    )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_required_params
    response = @metronome.v1.customers.billing_config.retrieve(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      billing_provider_type: :aws_marketplace
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
    response = @metronome.v1.customers.billing_config.delete(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      billing_provider_type: :aws_marketplace
    )

    assert_pattern do
      response => nil
    end
  end
end
