# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V2::ContractsTest < MetronomeSDK::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @metronome.v2.contracts.retrieve(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ContractV2
      }
    end
  end

  def test_list_required_params
    response = @metronome.v2.contracts.list(customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Internal::BodyCursorPageCursorField
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::ContractV2
    end

    assert_pattern do
      row => {
        id: String,
        commits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Commit]),
        created_at: Time,
        created_by: String,
        customer_id: String,
        overrides: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Override]),
        scheduled_charges: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduledCharge]),
        starting_at: Time,
        transitions: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Transition]),
        usage_filter: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::UsageFilter]),
        usage_statement_schedule: MetronomeSDK::ContractV2::UsageStatementSchedule,
        archived_at: Time | nil,
        billing_provider_configuration_schedule: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::BillingProviderConfigurationSchedule]) | nil,
        credits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Credit]) | nil,
        custom_fields: ^(MetronomeSDK::Internal::Type::HashOf[String]) | nil,
        customer_billing_provider_configuration: MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration | nil,
        discounts: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount]) | nil,
        ending_before: Time | nil,
        has_more: MetronomeSDK::ContractV2::HasMore | nil,
        hierarchy_configuration: MetronomeSDK::ContractV2::HierarchyConfiguration | nil,
        multiplier_override_prioritization: MetronomeSDK::ContractV2::MultiplierOverridePrioritization | nil,
        name: String | nil,
        net_payment_terms_days: Float | nil,
        netsuite_sales_order_id: String | nil,
        prepaid_balance_threshold_configuration: MetronomeSDK::PrepaidBalanceThresholdConfigurationV2 | nil,
        priority: Float | nil,
        professional_services: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ProService]) | nil,
        rate_card_id: String | nil,
        recurring_commits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::RecurringCommit]) | nil,
        recurring_credits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::RecurringCredit]) | nil,
        reseller_royalties: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::ResellerRoyalty]) | nil,
        revenue_system_configuration_schedule: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::RevenueSystemConfigurationSchedule]) | nil,
        salesforce_opportunity_id: String | nil,
        scheduled_charges_on_usage_invoices: MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices | nil,
        spend_threshold_configuration: MetronomeSDK::SpendThresholdConfigurationV2 | nil,
        spend_trackers: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::SpendTracker]) | nil,
        subscriptions: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Subscription]) | nil,
        total_contract_value: Float | nil,
        uniqueness_key: String | nil
      }
    end
  end

  def test_edit_required_params
    response =
      @metronome.v2.contracts.edit(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractEditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::ContractEditResponse::Data
      }
    end
  end

  def test_edit_commit_required_params
    response =
      @metronome.v2.contracts.edit_commit(
        commit_id: "5e7e82cf-ccb7-428c-a96f-a8e4f67af822",
        customer_id: "4c91c473-fc12-445a-9c38-40421d47023f"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractEditCommitResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_edit_credit_required_params
    response =
      @metronome.v2.contracts.edit_credit(
        credit_id: "5e7e82cf-ccb7-428c-a96f-a8e4f67af822",
        customer_id: "4c91c473-fc12-445a-9c38-40421d47023f"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractEditCreditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_get_edit_history_required_params
    response =
      @metronome.v2.contracts.get_edit_history(
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::ContractGetEditHistoryResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data])
      }
    end
  end
end
