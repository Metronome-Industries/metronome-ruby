# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::BillingConfigTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_create_required_params
    response = @metronome.customers.billing_config.create(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      "aws_marketplace",
      {billing_provider_customer_id: "cus_AJ6y20bjkOOayM"}
    )
    assert_nil(response)
  end

  def test_retrieve
    response = @metronome.customers.billing_config.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", "aws_marketplace")
    assert_kind_of(Metronome::Models::BillingConfigRetrieveResponse, response)
  end

  def test_delete
    response = @metronome.customers.billing_config.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", "aws_marketplace")
    assert_nil(response)
  end
end
