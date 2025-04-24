# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::AlertsTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve_required_params
    response = @metronome.v1.customers.alerts.retrieve(
      alert_id: "8deed800-1b7a-495d-a207-6c52bac54dc9",
      customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1"
    )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Customers::CustomerAlert
      }
    end
  end

  def test_list_required_params
    response = @metronome.v1.customers.alerts.list(customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::AlertListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::CustomerAlert]),
        next_page: String | nil
      }
    end
  end

  def test_reset_required_params
    response = @metronome.v1.customers.alerts.reset(
      alert_id: "5e8691bf-b22a-4672-922d-f80eee940f01",
      customer_id: "4c83caf3-8af4-44e2-9aeb-e290531726d9"
    )

    assert_pattern do
      response => nil
    end
  end
end
