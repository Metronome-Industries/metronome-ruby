# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::BillableMetricsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response = @metronome.v1.billable_metrics.create(name: "CPU Hours")

    assert_pattern do
      response => MetronomeSDK::Models::V1::BillableMetricCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::BillableMetricCreateResponse::Data
      }
    end
  end

  def test_retrieve_required_params
    response =
      @metronome.v1.billable_metrics.retrieve(billable_metric_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Models::V1::BillableMetricRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data
      }
    end
  end

  def test_list
    response = @metronome.v1.billable_metrics.list

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::BillableMetricListResponse
    end

    assert_pattern do
      row => {
        id: String,
        name: String,
        aggregation_key: String | nil,
        aggregation_type: MetronomeSDK::Models::V1::BillableMetricListResponse::AggregationType | nil,
        archived_at: Time | nil,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        event_type_filter: MetronomeSDK::Models::V1::BillableMetricListResponse::EventTypeFilter | nil,
        group_keys: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Internal::Type::ArrayOf[String]]) | nil,
        property_filters: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::BillableMetricListResponse::PropertyFilter]) | nil,
        sql: String | nil
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v1.billable_metrics.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")

    assert_pattern do
      response => MetronomeSDK::Models::V1::BillableMetricArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::BillableMetricArchiveResponse::Data
      }
    end
  end
end
