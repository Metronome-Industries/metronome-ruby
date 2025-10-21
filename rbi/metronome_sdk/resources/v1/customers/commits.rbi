# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Commits
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
          # #### Commit type Requirements:
          #
          # - You must specify either "prepaid" or "postpaid" as the commit type:
          # - Prepaid commits: Customer pays upfront; invoice_schedule is optional (if
          #   omitted, creates a commit without an invoice)
          # - Postpaid commits: Customer pays when the commitment expires (the end of the
          #   access_schedule); invoice_schedule is required and must match access_schedule
          #   totals.
          #
          # #### Billing configuration:
          #
          # - invoice_contract_id is required for postpaid commits and for prepaid commits
          #   with billing (only optional for free prepaid commits) unless do_not_invoice is
          #   set to true
          # - For postpaid commits: access_schedule and invoice_schedule must have matching
          #   amounts
          # - For postpaid commits: only one schedule item is allowed in both schedules.
          #
          # #### Scoping flexibility:
          #
          # Customer-level commits can be configured in a few ways:
          #
          # - Contract-specific: Use the `applicable_contract_ids` field to limit the commit
          #   to specific contracts
          # - Cross-contract: Leave `applicable_contract_ids` empty to allow the commit to
          #   be used across all of the customer's contracts
          #
          # #### Product targeting:
          #
          # Commits can be scoped to specific products using applicable_product_ids,
          # applicable_product_tags, or specifiers, or left unrestricted to apply to all
          # products.
          #
          # #### Priority considerations:
          #
          # When multiple commits are applicable, the one with the lower priority value will
          # be consumed first. If there is a tie, contract level commits and credits will be
          # applied before customer level commits and credits. Plan your priority scheme
          # carefully to ensure commits are applied in the desired order.
          #
          # ### Usage guidelines:
          #
          # ⚠️ Preferred Alternative: In most cases, you should add commits directly to
          # contracts using the create contract or edit contract APIs instead of creating
          # customer-level commits. Contract-level commits provide better organization and
          # are the recommended approach for standard use cases.
          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::Customers::CommitCreateParams::AccessSchedule::OrHash,
              customer_id: String,
              priority: Float,
              product_id: String,
              type:
                MetronomeSDK::V1::Customers::CommitCreateParams::Type::OrSymbol,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_contract_id: String,
              invoice_schedule:
                MetronomeSDK::V1::Customers::CommitCreateParams::InvoiceSchedule::OrHash,
              name: String,
              netsuite_sales_order_id: String,
              rate_type:
                MetronomeSDK::V1::Customers::CommitCreateParams::RateType::OrSymbol,
              salesforce_opportunity_id: String,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash],
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(MetronomeSDK::Models::V1::Customers::CommitCreateResponse)
          end
          def create(
            # Schedule for distributing the commit to the customer. For "POSTPAID" commits
            # only one schedule item is allowed and amount must match invoice_schedule total.
            access_schedule:,
            customer_id:,
            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            priority:,
            # ID of the fixed product associated with the commit. This is required because
            # products are used to invoice the commit amount.
            product_id:,
            type:,
            # Which contract the commit applies to. If not provided, the commit applies to all
            # contracts.
            applicable_contract_ids: nil,
            # Which products the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If applicable_product_ids,
            # applicable_product_tags or specifiers are not provided, the commit applies to
            # all products.
            applicable_product_tags: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # The contract that this commit will be billed on. This is required for "POSTPAID"
            # commits and for "PREPAID" commits unless there is no invoice schedule above
            # (i.e., the commit is 'free'), or if do_not_invoice is set to true.
            invoice_contract_id: nil,
            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match
            # accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
            # will be a "complimentary" commit with no invoice.
            invoice_schedule: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            rate_type: nil,
            # This field's availability is dependent on your client's configuration.
            salesforce_opportunity_id: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil,
            # Prevents the creation of duplicates. If a request to create a commit or credit
            # is made with a uniqueness key that was previously used to create a commit or
            # credit, a new record will not be created and the request will fail with a 409
            # error.
            uniqueness_key: nil,
            request_options: {}
          )
          end

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
          sig do
            params(
              customer_id: String,
              commit_id: String,
              covering_date: Time,
              effective_before: Time,
              include_archived: T::Boolean,
              include_balance: T::Boolean,
              include_contract_commits: T::Boolean,
              include_ledgers: T::Boolean,
              limit: Integer,
              next_page: String,
              starting_at: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::BodyCursorPage[MetronomeSDK::Commit]
            )
          end
          def list(
            customer_id:,
            commit_id: nil,
            # Include only commits that have access schedules that "cover" the provided date
            covering_date: nil,
            # Include only commits that have any access before the provided date (exclusive)
            effective_before: nil,
            # Include archived commits and commits from archived contracts.
            include_archived: nil,
            # Include the balance in the response. Setting this flag may cause the query to be
            # slower.
            include_balance: nil,
            # Include commits on the contract level.
            include_contract_commits: nil,
            # Include commit ledgers in the response. Setting this flag may cause the query to
            # be slower.
            include_ledgers: nil,
            # The maximum number of commits to return. Defaults to 25.
            limit: nil,
            # The next page token from a previous response.
            next_page: nil,
            # Include only commits that have any access on or after the provided date
            starting_at: nil,
            request_options: {}
          )
          end

          # Shortens the end date of a prepaid commit to terminate it earlier than
          # originally scheduled. Use this endpoint when you need to cancel or reduce the
          # duration of an existing prepaid commit. Only works with prepaid commit types and
          # can only move the end date forward (earlier), not extend it.
          #
          # ### Usage guidelines:
          #
          # To extend commit end dates or make other comprehensive edits, use the 'edit
          # commit' endpoint instead.
          sig do
            params(
              commit_id: String,
              customer_id: String,
              access_ending_before: Time,
              invoices_ending_before: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse
            )
          end
          def update_end_date(
            # ID of the commit to update. Only supports "PREPAID" commits.
            commit_id:,
            # ID of the customer whose commit is to be updated
            customer_id:,
            # RFC 3339 timestamp indicating when access to the commit will end and it will no
            # longer be possible to draw it down (exclusive). If not provided, the access will
            # not be updated.
            access_ending_before: nil,
            # RFC 3339 timestamp indicating when the commit will stop being invoiced
            # (exclusive). If not provided, the invoice schedule will not be updated.
            invoices_ending_before: nil,
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
end
