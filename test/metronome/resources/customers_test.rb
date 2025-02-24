# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CustomersTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.customers.create(name: "Example, Inc.")

    assert_pattern do
      response => Metronome::Models::CustomerCreateResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::Customer
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.customers.retrieve(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::Models::CustomerRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::CustomerDetail
      }
    end
  end

  def test_list
    response = @metronome.customers.list

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::CustomerDetail
    end

    assert_pattern do
      row => {
        id: String,
        custom_fields: ^(Metronome::HashOf[String]),
        customer_config: Metronome::Models::CustomerDetail::CustomerConfig,
        external_id: String,
        ingest_aliases: ^(Metronome::ArrayOf[String]),
        name: String,
        archived_at: Time | nil,
        current_billable_status: Metronome::Models::CustomerDetail::CurrentBillableStatus | nil
      }
    end
  end

  def test_archive_required_params
    response = @metronome.customers.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")

    assert_pattern do
      response => Metronome::Models::CustomerArchiveResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end

  def test_list_billable_metrics_required_params
    response = @metronome.customers.list_billable_metrics(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::CustomerListBillableMetricsResponse
    end

    assert_pattern do
      row => {
        id: String,
        name: String,
        aggregate: String | nil,
        aggregate_keys: ^(Metronome::ArrayOf[String]) | nil,
        aggregation_key: String | nil,
        aggregation_type: Metronome::Models::CustomerListBillableMetricsResponse::AggregationType | nil,
        archived_at: Time | nil,
        custom_fields: ^(Metronome::HashOf[String]) | nil,
        event_type_filter: Metronome::Models::EventTypeFilter | nil,
        filter: ^(Metronome::HashOf[Metronome::Unknown]) | nil,
        group_by: ^(Metronome::ArrayOf[String]) | nil,
        group_keys: ^(Metronome::ArrayOf[Metronome::ArrayOf[String]]) | nil,
        property_filters: ^(Metronome::ArrayOf[Metronome::Models::PropertyFilter]) | nil,
        sql: String | nil
      }
    end
  end

  def test_list_costs_required_params
    response = @metronome.customers.list_costs(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      ending_before: "2019-12-27T18:11:19.117Z",
      starting_on: "2019-12-27T18:11:19.117Z"
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
      row => Metronome::Models::CustomerListCostsResponse
    end

    assert_pattern do
      row => {
        credit_types: ^(Metronome::HashOf[Metronome::Models::CustomerListCostsResponse::CreditType]),
        end_timestamp: Time,
        start_timestamp: Time
      }
    end
  end

  def test_set_ingest_aliases_required_params
    response = @metronome.customers.set_ingest_aliases(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      ingest_aliases: ["team@example.com"]
    )

    assert_pattern do
      response => nil
    end
  end

  def test_set_name_required_params
    response = @metronome.customers.set_name(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      name: "Example, Inc."
    )

    assert_pattern do
      response => Metronome::Models::CustomerSetNameResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::Customer
      }
    end
  end

  def test_update_config_required_params
    response = @metronome.customers.update_config(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => nil
    end
  end
end
