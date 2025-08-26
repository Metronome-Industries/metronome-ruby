# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::CommitsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.customers.commits.create(
        access_schedule: {
          schedule_items: [
            {
              amount: 1000,
              ending_before: "2020-02-01T00:00:00.000Z",
              starting_at: "2020-01-01T00:00:00.000Z"
            }
          ]
        },
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        priority: 100,
        product_id: "f14d6729-6a44-4b13-9908-9387f1918790",
        type: :PREPAID
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::CommitCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Customers::CommitCreateResponse::Data
      }
    end
  end

  def test_list_required_params
    response = @metronome.v1.customers.commits.list(customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Internal::BodyCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::Customers::CommitListResponse
    end

    assert_pattern do
      row => {
        id: String,
        product: MetronomeSDK::Models::V1::Customers::CommitListResponse::Product,
        type: MetronomeSDK::Models::V1::Customers::CommitListResponse::Type,
        access_schedule: MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule | nil,
        amount: Float | nil,
        applicable_contract_ids: ^(MetronomeSDK::Internal::Type::ArrayOf[String]) | nil,
        applicable_product_ids: ^(MetronomeSDK::Internal::Type::ArrayOf[String]) | nil,
        applicable_product_tags: ^(MetronomeSDK::Internal::Type::ArrayOf[String]) | nil,
        archived_at: Time | nil,
        balance: Float | nil,
        contract: MetronomeSDK::Models::V1::Customers::CommitListResponse::Contract | nil,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        description: String | nil,
        hierarchy_configuration: MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration | nil,
        invoice_contract: MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceContract | nil,
        invoice_schedule: MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule | nil,
        ledger: ^(MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger]) | nil,
        name: String | nil,
        netsuite_sales_order_id: String | nil,
        priority: Float | nil,
        rate_type: MetronomeSDK::Models::V1::Customers::CommitListResponse::RateType | nil,
        rolled_over_from: MetronomeSDK::Models::V1::Customers::CommitListResponse::RolledOverFrom | nil,
        rollover_fraction: Float | nil,
        salesforce_opportunity_id: String | nil,
        specifiers: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CommitListResponse::Specifier]) | nil,
        uniqueness_key: String | nil
      }
    end
  end

  def test_update_end_date_required_params
    response =
      @metronome.v1.customers.commits.update_end_date(
        commit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse::Data
      }
    end
  end
end
