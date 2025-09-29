# typed: strong

module MetronomeSDK
  module Resources
    class Packages
      # Create a new package
      sig do
        params(
          name: String,
          billing_anchor_date:
            MetronomeSDK::PackageCreateParams::BillingAnchorDate::OrSymbol,
          billing_provider:
            MetronomeSDK::PackageCreateParams::BillingProvider::OrSymbol,
          commits: T::Array[MetronomeSDK::PackageCreateParams::Commit::OrHash],
          contract_name: String,
          credits: T::Array[MetronomeSDK::PackageCreateParams::Credit::OrHash],
          custom_fields: T::Hash[Symbol, String],
          delivery_method:
            MetronomeSDK::PackageCreateParams::DeliveryMethod::OrSymbol,
          duration: MetronomeSDK::PackageCreateParams::Duration::OrHash,
          multiplier_override_prioritization:
            MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization::OrSymbol,
          net_payment_terms_days: Float,
          overrides:
            T::Array[MetronomeSDK::PackageCreateParams::Override::OrHash],
          prepaid_balance_threshold_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
          priority: Float,
          rate_card_alias: String,
          rate_card_id: String,
          recurring_commits:
            T::Array[
              MetronomeSDK::PackageCreateParams::RecurringCommit::OrHash
            ],
          recurring_credits:
            T::Array[
              MetronomeSDK::PackageCreateParams::RecurringCredit::OrHash
            ],
          scheduled_charges:
            T::Array[
              MetronomeSDK::PackageCreateParams::ScheduledCharge::OrHash
            ],
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
          spend_threshold_configuration:
            MetronomeSDK::SpendThresholdConfiguration::OrHash,
          subscriptions:
            T::Array[MetronomeSDK::PackageCreateParams::Subscription::OrHash],
          uniqueness_key: String,
          usage_statement_schedule:
            MetronomeSDK::PackageCreateParams::UsageStatementSchedule::OrHash,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(MetronomeSDK::Models::PackageCreateResponse)
      end
      def create(
        name:,
        billing_anchor_date: nil,
        billing_provider: nil,
        commits: nil,
        contract_name: nil,
        credits: nil,
        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        custom_fields: nil,
        delivery_method: nil,
        duration: nil,
        # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        # prices automatically. EXPLICIT prioritization requires specifying priorities for
        # each multiplier; the one with the lowest priority value will be prioritized
        # first. If tiered overrides are used, prioritization must be explicit.
        multiplier_override_prioritization: nil,
        net_payment_terms_days: nil,
        overrides: nil,
        prepaid_balance_threshold_configuration: nil,
        # Priority of the generated contract.
        priority: nil,
        # Selects the rate card linked to the specified alias as of the contract's start
        # date.
        rate_card_alias: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        scheduled_charges: nil,
        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        scheduled_charges_on_usage_invoices: nil,
        spend_threshold_configuration: nil,
        subscriptions: nil,
        # Prevents the creation of duplicates. If a request to create a record is made
        # with a previously used uniqueness key, a new record will not be created and the
        # request will fail with a 409 error.
        uniqueness_key: nil,
        usage_statement_schedule: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
