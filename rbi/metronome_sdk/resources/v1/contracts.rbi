# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        sig { returns(MetronomeSDK::Resources::V1::Contracts::Products) }
        attr_reader :products

        sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards) }
        attr_reader :rate_cards

        sig { returns(MetronomeSDK::Resources::V1::Contracts::NamedSchedules) }
        attr_reader :named_schedules

        # Create a new contract
        sig do
          params(
            customer_id: String,
            starting_at: Time,
            billing_provider_configuration:
              MetronomeSDK::V1::ContractCreateParams::BillingProviderConfiguration::OrHash,
            commits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Commit::OrHash],
            credits:
              T::Array[MetronomeSDK::V1::ContractCreateParams::Credit::OrHash],
            custom_fields: T::Hash[Symbol, String],
            discounts:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Discount::OrHash
              ],
            ending_before: Time,
            multiplier_override_prioritization:
              MetronomeSDK::V1::ContractCreateParams::MultiplierOverridePrioritization::OrSymbol,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            overrides:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Override::OrHash
              ],
            prepaid_balance_threshold_configuration:
              MetronomeSDK::V1::ContractCreateParams::PrepaidBalanceThresholdConfiguration::OrHash,
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ProfessionalService::OrHash
              ],
            rate_card_alias: String,
            rate_card_id: String,
            recurring_commits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCommit::OrHash
              ],
            recurring_credits:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::RecurringCredit::OrHash
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ResellerRoyalty::OrHash
              ],
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::ScheduledCharge::OrHash
              ],
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices::OrSymbol,
            spend_threshold_configuration:
              MetronomeSDK::V1::ContractCreateParams::SpendThresholdConfiguration::OrHash,
            subscriptions:
              T::Array[
                MetronomeSDK::V1::ContractCreateParams::Subscription::OrHash
              ],
            total_contract_value: Float,
            transition:
              MetronomeSDK::V1::ContractCreateParams::Transition::OrHash,
            uniqueness_key: String,
            usage_filter:
              MetronomeSDK::V1::ContractCreateParams::UsageFilter::OrHash,
            usage_statement_schedule:
              MetronomeSDK::V1::ContractCreateParams::UsageStatementSchedule::OrHash,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractCreateResponse)
        end
        def create(
          customer_id:,
          # inclusive contract start time
          starting_at:,
          # The billing provider configuration associated with a contract.
          billing_provider_configuration: nil,
          commits: nil,
          credits: nil,
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # exclusive contract end time
          ending_before: nil,
          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first. If tiered overrides are used, prioritization must be explicit.
          multiplier_override_prioritization: nil,
          name: nil,
          net_payment_terms_days: nil,
          # This field's availability is dependent on your client's configuration.
          netsuite_sales_order_id: nil,
          overrides: nil,
          prepaid_balance_threshold_configuration: nil,
          # This field's availability is dependent on your client's configuration.
          professional_services: nil,
          # Selects the rate card linked to the specified alias as of the contract's start
          # date.
          rate_card_alias: nil,
          rate_card_id: nil,
          recurring_commits: nil,
          recurring_credits: nil,
          # This field's availability is dependent on your client's configuration.
          reseller_royalties: nil,
          # This field's availability is dependent on your client's configuration.
          salesforce_opportunity_id: nil,
          scheduled_charges: nil,
          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          scheduled_charges_on_usage_invoices: nil,
          spend_threshold_configuration: nil,
          # (beta) Optional list of
          # [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
          # to add to the contract.
          subscriptions: nil,
          # This field's availability is dependent on your client's configuration.
          total_contract_value: nil,
          transition: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          usage_filter: nil,
          usage_statement_schedule: nil,
          request_options: {}
        )
        end

        # This is the v1 endpoint to get a contract. New clients should implement using
        # the v2 endpoint.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractRetrieveResponse)
        end
        def retrieve(
          contract_id:,
          customer_id:,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit ledgers in the response. Setting this flag may cause the query to
          # be slower.
          include_ledgers: nil,
          request_options: {}
        )
        end

        # This is the v1 endpoint to list all contracts for a customer. New clients should
        # implement using the v2 endpoint.
        sig do
          params(
            customer_id: String,
            covering_date: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractListResponse)
        end
        def list(
          customer_id:,
          # Optional RFC 3339 timestamp. If provided, the response will include only
          # contracts effective on the provided date. This cannot be provided if the
          # starting_at filter is provided.
          covering_date: nil,
          # Include archived contracts in the response
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit ledgers in the response. Setting this flag may cause the query to
          # be slower.
          include_ledgers: nil,
          # Optional RFC 3339 timestamp. If provided, the response will include only
          # contracts where effective_at is on or after the provided date. This cannot be
          # provided if the covering_date filter is provided.
          starting_at: nil,
          request_options: {}
        )
        end

        # Add a manual balance entry
        sig do
          params(
            id: String,
            amount: Float,
            customer_id: String,
            reason: String,
            segment_id: String,
            contract_id: String,
            timestamp: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def add_manual_balance_entry(
          # ID of the balance (commit or credit) to update.
          id:,
          # Amount to add to the segment. A negative number will draw down from the balance.
          amount:,
          # ID of the customer whose balance is to be updated.
          customer_id:,
          # Reason for the manual adjustment. This will be displayed in the ledger.
          reason:,
          # ID of the segment to update.
          segment_id:,
          # ID of the contract to update. Leave blank to update a customer level balance.
          contract_id: nil,
          # RFC 3339 timestamp indicating when the manual adjustment takes place. If not
          # provided, it will default to the start of the segment.
          timestamp: nil,
          request_options: {}
        )
        end

        # Amendments will be replaced by Contract editing. New clients should implement
        # using the editContract endpoint. Read more about the migration to contract
        # editing [here](https://docs.metronome.com/migrate-amendments-to-edits/) and
        # reach out to your Metronome representative for more details. Once contract
        # editing is enabled, access to this endpoint will be removed.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            starting_at: Time,
            commits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Commit::OrHash],
            credits:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Credit::OrHash],
            custom_fields: T::Hash[Symbol, String],
            discounts:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Discount::OrHash],
            netsuite_sales_order_id: String,
            overrides:
              T::Array[MetronomeSDK::V1::ContractAmendParams::Override::OrHash],
            professional_services:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ProfessionalService::OrHash
              ],
            reseller_royalties:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::OrHash
              ],
            salesforce_opportunity_id: String,
            scheduled_charges:
              T::Array[
                MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::OrHash
              ],
            total_contract_value: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractAmendResponse)
        end
        def amend(
          # ID of the contract to amend
          contract_id:,
          # ID of the customer whose contract is to be amended
          customer_id:,
          # inclusive start time for the amendment
          starting_at:,
          commits: nil,
          credits: nil,
          custom_fields: nil,
          # This field's availability is dependent on your client's configuration.
          discounts: nil,
          # This field's availability is dependent on your client's configuration.
          netsuite_sales_order_id: nil,
          overrides: nil,
          # This field's availability is dependent on your client's configuration.
          professional_services: nil,
          # This field's availability is dependent on your client's configuration.
          reseller_royalties: nil,
          # This field's availability is dependent on your client's configuration.
          salesforce_opportunity_id: nil,
          scheduled_charges: nil,
          # This field's availability is dependent on your client's configuration.
          total_contract_value: nil,
          request_options: {}
        )
        end

        # Archive a contract
        sig do
          params(
            contract_id: String,
            customer_id: String,
            void_invoices: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractArchiveResponse)
        end
        def archive(
          # ID of the contract to archive
          contract_id:,
          # ID of the customer whose contract is to be archived
          customer_id:,
          # If false, the existing finalized invoices will remain after the contract is
          # archived.
          void_invoices:,
          request_options: {}
        )
        end

        # Creates historical usage invoices for a contract
        sig do
          params(
            invoices:
              T::Array[
                MetronomeSDK::V1::ContractCreateHistoricalInvoicesParams::Invoice::OrHash
              ],
            preview: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractCreateHistoricalInvoicesResponse
          )
        end
        def create_historical_invoices(invoices:, preview:, request_options: {})
        end

        # List balances (commits and credits).
        sig do
          params(
            customer_id: String,
            id: String,
            covering_date: Time,
            effective_before: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_contract_balances: T::Boolean,
            include_ledgers: T::Boolean,
            next_page: String,
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractListBalancesResponse)
        end
        def list_balances(
          customer_id:,
          id: nil,
          # Return only balances that have access schedules that "cover" the provided date
          covering_date: nil,
          # Include only balances that have any access before the provided date (exclusive)
          effective_before: nil,
          # Include archived credits and credits from archived contracts.
          include_archived: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include balances on the contract level.
          include_contract_balances: nil,
          # Include ledgers in the response. Setting this flag may cause the query to be
          # slower.
          include_ledgers: nil,
          # The next page token from a previous response.
          next_page: nil,
          # Include only balances that have any access on or after the provided date
          starting_at: nil,
          request_options: {}
        )
        end

        # Get the rate schedule for the rate card on a given contract.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            limit: Integer,
            next_page: String,
            at: Time,
            selectors:
              T::Array[
                MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractRetrieveRateScheduleResponse
          )
        end
        def retrieve_rate_schedule(
          # Body param: ID of the contract to get the rate schedule for.
          contract_id:,
          # Body param: ID of the customer for whose contract to get the rate schedule for.
          customer_id:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: optional timestamp which overlaps with the returned rate schedule
          # segments. When not specified, the current timestamp will be used.
          at: nil,
          # Body param: List of rate selectors, rates matching ANY of the selectors will be
          # included in the response. Passing no selectors will result in all rates being
          # returned.
          selectors: nil,
          request_options: {}
        )
        end

        # Fetch the quantity and price for a subscription over time. End-point does not
        # return future scheduled changes.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            subscription_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractRetrieveSubscriptionQuantityHistoryResponse
          )
        end
        def retrieve_subscription_quantity_history(
          contract_id:,
          customer_id:,
          subscription_id:,
          request_options: {}
        )
        end

        # Create a new scheduled invoice for Professional Services terms on a contract.
        # This endpoint's availability is dependent on your client's configuration.
        sig do
          params(
            contract_id: String,
            customer_id: String,
            issued_at: Time,
            line_items:
              T::Array[
                MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams::LineItem::OrHash
              ],
            netsuite_invoice_header_end: Time,
            netsuite_invoice_header_start: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceResponse
          )
        end
        def schedule_pro_services_invoice(
          contract_id:,
          customer_id:,
          # The date the invoice is issued
          issued_at:,
          # Each line requires an amount or both unit_price and quantity.
          line_items:,
          # The end date of the invoice header in Netsuite
          netsuite_invoice_header_end: nil,
          # The start date of the invoice header in Netsuite
          netsuite_invoice_header_start: nil,
          request_options: {}
        )
        end

        # Set usage filter for a contract
        sig do
          params(
            contract_id: String,
            customer_id: String,
            group_key: String,
            group_values: T::Array[String],
            starting_at: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def set_usage_filter(
          contract_id:,
          customer_id:,
          group_key:,
          group_values:,
          starting_at:,
          request_options: {}
        )
        end

        # Update the end date of a contract
        sig do
          params(
            contract_id: String,
            customer_id: String,
            allow_ending_before_finalized_invoice: T::Boolean,
            ending_before: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::ContractUpdateEndDateResponse)
        end
        def update_end_date(
          # ID of the contract to update
          contract_id:,
          # ID of the customer whose contract is to be updated
          customer_id:,
          # If true, allows setting the contract end date earlier than the end_timestamp of
          # existing finalized invoices. Finalized invoices will be unchanged; if you want
          # to incorporate the new end date, you can void and regenerate finalized usage
          # invoices. Defaults to true.
          allow_ending_before_finalized_invoice: nil,
          # RFC 3339 timestamp indicating when the contract will end (exclusive). If not
          # provided, the contract will be updated to be open-ended.
          ending_before: nil,
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
end
