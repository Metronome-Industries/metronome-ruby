# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Commits
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CommitCreateParams} for more details.
          #
          # Creates customer-level commits that establish spending commitments for customers
          # across their Metronome usage. Commits represent contracted spending obligations
          # that can be either prepaid (paid upfront) or postpaid (billed later).
          #
          # Note: In most cases, you should add commitments directly to customer contracts
          # using the contract/create or contract/edit APIs.
          #
          # ### Use this endpoint to:
          #
          # Use this endpoint when you need to establish customer-level spending commitments
          # that can be applied across multiple contracts or scoped to specific contracts.
          # Customer-level commits are ideal for:
          #
          # - Enterprise-wide minimum spending agreements that span multiple contracts
          # - Multi-contract volume commitments with shared spending pools
          # - Cross-contract discount tiers based on aggregate usage
          #
          # ####Commit type Requirements:
          #
          # - You must specify either "prepaid" or "postpaid" as the commit type:
          # - Prepaid commits: Customer pays upfront; invoice_schedule is optional (if
          #   omitted, creates a commit without an invoice)
          # - Postpaid commits: Customer pays when the commitment expires (the end of the
          #   access_schedule); invoice_schedule is required and must match access_schedule
          #   totals.
          #
          # ####Billing configuration:
          #
          # - invoice_contract_id is required for postpaid commits and for prepaid commits
          #   with billing (only optional for free prepaid commits)
          # - For postpaid commits: access_schedule and invoice_schedule must have matching
          #   amounts
          # - For postpaid commits: only one schedule item is allowed in both schedules.
          #
          # ####Scoping flexibility: Customer-level commits can be configured in a few ways:
          #
          # - Contract-specific: Use the `applicable_contract_ids` field to limit the commit
          #   to specific contracts
          # - Cross-contract: Leave `applicable_contract_ids` empty to allow the commit to
          #   be used across all of the customer's contracts
          #
          # ####Product targeting: Commits can be scoped to specific products using
          # applicable_product_ids, applicable_product_tags, or specifiers, or left
          # unrestricted to apply to all products.
          #
          # ####Priority considerations: When multiple commits are applicable, the one with
          # the lower priority value will be consumed first. If there is a tie, contract
          # level commits and credits will be applied before customer level commits and
          # credits. Plan your priority scheme carefully to ensure commits are applied in
          # the desired order.
          #
          # ### Usage guidelines:
          #
          # ⚠️ Preferred Alternative: In most cases, you should add commits directly to
          # contracts using the create contract or edit contract APIs instead of creating
          # customer-level commits. Contract-level commits provide better organization and
          # are the recommended approach for standard use cases.
          #
          # @overload create(access_schedule:, customer_id:, priority:, product_id:, type:, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_contract_id: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, rate_type: nil, salesforce_opportunity_id: nil, specifiers: nil, uniqueness_key: nil, request_options: {})
          #
          # @param access_schedule [MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule] Schedule for distributing the commit to the customer. For "POSTPAID" commits onl
          #
          # @param customer_id [String]
          #
          # @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #
          # @param product_id [String] ID of the fixed product associated with the commit. This is required because pro
          #
          # @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::Type]
          #
          # @param applicable_contract_ids [Array<String>] Which contract the commit applies to. If not provided, the commit applies to all
          #
          # @param applicable_product_ids [Array<String>] Which products the commit applies to. If applicable_product_ids, applicable_prod
          #
          # @param applicable_product_tags [Array<String>] Which tags the commit applies to. If applicable*product_ids, applicable_product*
          #
          # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          # @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param invoice_contract_id [String] The contract that this commit will be billed on. This is required for "POSTPAID"
          #
          # @param invoice_schedule [MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
          #
          # @param name [String] displayed on invoices
          #
          # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param rate_type [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::RateType]
          #
          # @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
          #
          # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CommitCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CommitCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Customers::CommitCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCommits/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CommitCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CommitListParams} for more details.
          #
          # Retrieve all commit agreements for a customer, including both prepaid and
          # postpaid commitments. This endpoint provides comprehensive visibility into
          # contractual spending obligations, enabling you to track commitment utilization
          # and manage customer contracts effectively.
          #
          # ### Use this endpoint to:
          #
          # - Display commitment balances and utilization in customer dashboards
          # - Track prepaid commitment drawdown and remaining balances
          # - Monitor postpaid commitment progress toward minimum thresholds
          # - Build commitment tracking and forecasting tools
          # - Show commitment history with optional ledger details
          # - Manage rollover balances between contract periods
          #
          # ### Key response fields:
          #
          # An array of Commit objects containing:
          #
          # - Commit type: PREPAID (pay upfront) or POSTPAID (pay at true-up)
          # - Rate type: COMMIT_RATE (discounted) or LIST_RATE (standard pricing)
          # - Access schedule: When commitment funds become available
          # - Invoice schedule: When the customer is billed
          # - Product targeting: Which product(s) usage is eligible to draw from this commit
          # - Optional ledger entries: Transaction history (if `include_ledgers=true`)
          # - Balance information: Current available amount (if `include_balance=true`)
          # - Rollover settings: Fraction of unused amount that carries forward
          #
          # ### Usage guidelines:
          #
          # - Pagination: Results limited to 25 commits per page; use 'next_page' for more
          # - Date filtering options:
          #   - `covering_date`: Commits active on a specific date
          #   - `starting_at`: Commits with access on/after a date
          #   - `effective_before`: Commits with access before a date (exclusive)
          # - Scope options:
          #   - `include_contract_commits`: Include contract-level commits (not just
          #     customer-level)
          #   - `include_archived`: Include archived commits and commits from archived
          #     contracts
          # - Performance considerations:
          #   - include_ledgers: Adds detailed transaction history (slower)
          #   - include_balance: Adds current balance calculation (slower)
          # - Optional filtering: Use commit_id to retrieve a specific commit
          #
          # @overload list(customer_id:, commit_id: nil, covering_date: nil, effective_before: nil, include_archived: nil, include_balance: nil, include_contract_commits: nil, include_ledgers: nil, limit: nil, next_page: nil, starting_at: nil, request_options: {})
          #
          # @param customer_id [String]
          #
          # @param commit_id [String]
          #
          # @param covering_date [Time] Include only commits that have access schedules that "cover" the provided date
          #
          # @param effective_before [Time] Include only commits that have any access before the provided date (exclusive)
          #
          # @param include_archived [Boolean] Include archived commits and commits from archived contracts.
          #
          # @param include_balance [Boolean] Include the balance in the response. Setting this flag may cause the query to be
          #
          # @param include_contract_commits [Boolean] Include commits on the contract level.
          #
          # @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
          #
          # @param limit [Integer] The maximum number of commits to return. Defaults to 25.
          #
          # @param next_page [String] The next page token from a previous response.
          #
          # @param starting_at [Time] Include only commits that have any access on or after the provided date
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::BodyCursorPage<MetronomeSDK::Models::Commit>]
          #
          # @see MetronomeSDK::Models::V1::Customers::CommitListParams
          def list(params)
            parsed, options = MetronomeSDK::V1::Customers::CommitListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCommits/list",
              body: parsed,
              page: MetronomeSDK::Internal::BodyCursorPage,
              model: MetronomeSDK::Commit,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateParams} for more
          # details.
          #
          # Shortens the end date of a prepaid commit to terminate it earlier than
          # originally scheduled. Use this endpoint when you need to cancel or reduce the
          # duration of an existing prepaid commit. Only works with prepaid commit types and
          # can only move the end date forward (earlier), not extend it.
          #
          # ### Usage guidelines:
          #
          # To extend commit end dates or make other comprehensive edits, use the 'edit
          # commit' endpoint instead.
          #
          # @overload update_end_date(commit_id:, customer_id:, access_ending_before: nil, invoices_ending_before: nil, request_options: {})
          #
          # @param commit_id [String] ID of the commit to update. Only supports "PREPAID" commits.
          #
          # @param customer_id [String] ID of the customer whose commit is to be updated
          #
          # @param access_ending_before [Time] RFC 3339 timestamp indicating when access to the commit will end and it will no
          #
          # @param invoices_ending_before [Time] RFC 3339 timestamp indicating when the commit will stop being invoiced (exclusiv
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateParams
          def update_end_date(params)
            parsed, options = MetronomeSDK::V1::Customers::CommitUpdateEndDateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCommits/updateEndDate",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse,
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
  end
end
