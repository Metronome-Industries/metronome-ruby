# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class Packages
      # Some parameter documentations has been truncated, see
      # {MetronomeSDK::Models::PackageCreateParams} for more details.
      #
      # Create a new package
      #
      # @overload create(name:, billing_anchor_date: nil, billing_provider: nil, commits: nil, contract_name: nil, credits: nil, custom_fields: nil, delivery_method: nil, duration: nil, multiplier_override_prioritization: nil, net_payment_terms_days: nil, overrides: nil, prepaid_balance_threshold_configuration: nil, priority: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil, usage_statement_schedule: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param billing_anchor_date [Symbol, MetronomeSDK::Models::PackageCreateParams::BillingAnchorDate]
      #
      # @param billing_provider [Symbol, MetronomeSDK::Models::PackageCreateParams::BillingProvider]
      #
      # @param commits [Array<MetronomeSDK::Models::PackageCreateParams::Commit>]
      #
      # @param contract_name [String]
      #
      # @param credits [Array<MetronomeSDK::Models::PackageCreateParams::Credit>]
      #
      # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      # @param delivery_method [Symbol, MetronomeSDK::Models::PackageCreateParams::DeliveryMethod]
      #
      # @param duration [MetronomeSDK::Models::PackageCreateParams::Duration]
      #
      # @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::PackageCreateParams::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
      #
      # @param net_payment_terms_days [Float]
      #
      # @param overrides [Array<MetronomeSDK::Models::PackageCreateParams::Override>]
      #
      # @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
      #
      # @param priority [Float] Priority of the generated contract.
      #
      # @param rate_card_alias [String] Selects the rate card linked to the specified alias as of the contract's start d
      #
      # @param rate_card_id [String]
      #
      # @param recurring_commits [Array<MetronomeSDK::Models::PackageCreateParams::RecurringCommit>]
      #
      # @param recurring_credits [Array<MetronomeSDK::Models::PackageCreateParams::RecurringCredit>]
      #
      # @param scheduled_charges [Array<MetronomeSDK::Models::PackageCreateParams::ScheduledCharge>]
      #
      # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::PackageCreateParams::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
      #
      # @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
      #
      # @param subscriptions [Array<MetronomeSDK::Models::PackageCreateParams::Subscription>]
      #
      # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
      #
      # @param usage_statement_schedule [MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule]
      #
      # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MetronomeSDK::Models::PackageCreateResponse]
      #
      # @see MetronomeSDK::Models::PackageCreateParams
      def create(params)
        parsed, options = MetronomeSDK::PackageCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/packages/create",
          body: parsed,
          model: MetronomeSDK::Models::PackageCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [MetronomeSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
