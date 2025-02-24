# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::BillableMetricsTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.billable_metrics.create(name: "CPU Hours")

    assert_pattern do
      response => Metronome::Models::BillableMetricCreateResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.billable_metrics.retrieve(billable_metric_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => Metronome::Models::BillableMetricRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::BillableMetricRetrieveResponse::Data
      }
    end
  end

  def test_list
    response = @metronome.billable_metrics.list

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::BillableMetricListResponse
    end

    assert_pattern do
      row => {
        id: String,
        name: String,
        aggregation_key: String | nil,
        aggregation_type: Metronome::Models::BillableMetricListResponse::AggregationType | nil,
        archived_at: Time | nil,
        custom_fields: ^(Metronome::HashOf[String]) | nil,
        event_type_filter: Metronome::Models::EventTypeFilter | nil,
        group_keys: ^(Metronome::ArrayOf[Metronome::ArrayOf[String]]) | nil,
        property_filters: ^(Metronome::ArrayOf[Metronome::Models::PropertyFilter]) | nil,
        sql: String | nil
      }
    end
  end

  def test_archive_required_params
    response = @metronome.billable_metrics.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")

    assert_pattern do
      response => Metronome::Models::BillableMetricArchiveResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::ID
      }
    end
  end
end
