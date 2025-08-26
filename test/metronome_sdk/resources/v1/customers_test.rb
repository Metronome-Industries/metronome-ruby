# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::CustomersTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response = @metronome.v1.customers.create(name: "Example, Inc.")

    assert_pattern do
      response => MetronomeSDK::Models::V1::CustomerCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::CustomerCreateResponse::Data
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.v1.customers.retrieve(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::CustomerRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data
      }
    end
  end

  def test_list
    response = @metronome.v1.customers.list

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::CustomerListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]),
        customer_config: MetronomeSDK::Models::V1::CustomerListResponse::CustomerConfig,
        external_id: String,
        ingest_aliases: ^(MetronomeSDK::Internal::Type::ArrayOf[String]),
        name: String,
        archived_at: Time | nil,
        current_billable_status: MetronomeSDK::Models::V1::CustomerListResponse::CurrentBillableStatus | nil
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v1.customers.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")

    assert_pattern do
      response => MetronomeSDK::Models::V1::CustomerArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::CustomerArchiveResponse::Data
      }
    end
  end

  def test_list_billable_metrics_required_params
    response =
      @metronome.v1.customers.list_billable_metrics(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse
    end

    assert_pattern do
      row => {
        id: String,
        name: String,
        aggregate: String | nil,
        aggregate_keys: ^(MetronomeSDK::Internal::Type::ArrayOf[String]) | nil,
        aggregation_key: String | nil,
        aggregation_type: MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType | nil,
        archived_at: Time | nil,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        event_type_filter: MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::EventTypeFilter | nil,
        filter: ^(MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]) | nil,
        group_by: ^(MetronomeSDK::Internal::Type::ArrayOf[String]) | nil,
        group_keys: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Internal::Type::ArrayOf[String]]) | nil,
        property_filters: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::PropertyFilter]) | nil,
        sql: String | nil
      }
    end
  end

  def test_list_costs_required_params
    response =
      @metronome.v1.customers.list_costs(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        ending_before: "2019-12-27T18:11:19.117Z",
        starting_on: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::CustomerListCostsResponse
    end

    assert_pattern do
      row => {
        credit_types: ^(MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType]),
        end_timestamp: Time,
        start_timestamp: Time
      }
    end
  end

  def test_preview_events_required_params
    response =
      @metronome.v1.customers.preview_events(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        events: [{event_type: "heartbeat"}]
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::CustomerPreviewEventsResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::CustomerPreviewEventsResponse::Data
      }
    end
  end

  def test_retrieve_billing_configurations_required_params
    response =
      @metronome.v1.customers.retrieve_billing_configurations(
        customer_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data])
      }
    end
  end

  def test_set_billing_configurations_required_params
    response =
      @metronome.v1.customers.set_billing_configurations(
        data: [
          {billing_provider: :stripe, customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491"},
          {billing_provider: :aws_marketplace, customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491"},
          {billing_provider: :azure_marketplace, customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491"},
          {billing_provider: :aws_marketplace, customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491"}
        ]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_set_ingest_aliases_required_params
    response =
      @metronome.v1.customers.set_ingest_aliases(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        ingest_aliases: ["team@example.com"]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_set_name_required_params
    response =
      @metronome.v1.customers.set_name(
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        name: "Example, Inc."
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::CustomerSetNameResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::CustomerSetNameResponse::Data
      }
    end
  end

  def test_update_config_required_params
    response = @metronome.v1.customers.update_config(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => nil
    end
  end
end
