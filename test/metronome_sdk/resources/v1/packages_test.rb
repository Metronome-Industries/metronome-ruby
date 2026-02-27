# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::PackagesTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response = @metronome.v1.packages.create(name: "My package")

    assert_pattern do
      response => MetronomeSDK::Models::V1::PackageCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.v1.packages.retrieve(package_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::PackageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::PackageRetrieveResponse::Data
      }
    end
  end

  def test_list
    response = @metronome.v1.packages.list

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::PackageListResponse
    end

    assert_pattern do
      row => {
        id: String,
        commits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Commit]),
        created_at: Time,
        created_by: String,
        overrides: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Override]),
        scheduled_charges: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge]),
        usage_statement_schedule: MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule,
        aliases: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Alias]) | nil,
        archived_at: Time | nil,
        billing_provider: MetronomeSDK::Models::V1::PackageListResponse::BillingProvider | nil,
        credits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Credit]) | nil,
        delivery_method: MetronomeSDK::Models::V1::PackageListResponse::DeliveryMethod | nil,
        duration: MetronomeSDK::Models::V1::PackageListResponse::Duration | nil,
        multiplier_override_prioritization: MetronomeSDK::Models::V1::PackageListResponse::MultiplierOverridePrioritization | nil,
        name: String | nil,
        net_payment_terms_days: Float | nil,
        prepaid_balance_threshold_configuration: MetronomeSDK::PrepaidBalanceThresholdConfiguration | nil,
        rate_card_id: String | nil,
        recurring_commits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit]) | nil,
        recurring_credits: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit]) | nil,
        scheduled_charges_on_usage_invoices: MetronomeSDK::Models::V1::PackageListResponse::ScheduledChargesOnUsageInvoices | nil,
        spend_threshold_configuration: MetronomeSDK::SpendThresholdConfiguration | nil,
        subscriptions: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Subscription]) | nil,
        uniqueness_key: String | nil
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v1.packages.archive(package_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::PackageArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end

  def test_list_contracts_on_package_required_params
    response =
      @metronome.v1.packages.list_contracts_on_package(package_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::Models::V1::PackageListContractsOnPackageResponse
    end

    assert_pattern do
      row => {
        contract_id: String,
        customer_id: String,
        starting_at: Time,
        archived_at: Time | nil,
        ending_before: Time | nil
      }
    end
  end
end
