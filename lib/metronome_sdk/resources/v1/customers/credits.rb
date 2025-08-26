# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Credits
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CreditCreateParams} for more details.
          #
          # Creates customer-level credits that provide spending allowances or free credit
          # balances for customers across their Metronome usage. Note: In most cases, you
          # should add credits directly to customer contracts using the contract/create or
          # contract/edit APIs.
          #
          # When to use this endpoint: Use this endpoint when you need to provision credits
          # directly at the customer level that can be applied across multiple contracts or
          # scoped to specific contracts. Customer-level credits are ideal for:
          #
          # - Customer onboarding incentives that apply globally
          # - Flexible spending allowances that aren't tied to a single contract
          # - Migration scenarios where you need to preserve existing customer balances
          #
          # Scoping Flexibility: Customer-level credits can be configured in two ways:
          #
          # - Contract-specific: Use the applicable_contract_ids field to limit the credit
          #   to specific contracts
          # - Cross-contract: Leave applicable_contract_ids empty to allow the credit to be
          #   used across all of the customer's contracts
          #
          # Product Targeting: Credits can be scoped to specific products using
          # applicable_product_ids or applicable_product_tags, or left unrestricted to apply
          # to all products.
          #
          # Priority Considerations: When multiple credits are applicable, the one with the
          # lower priority value will be consumed first. If there is a tie, contract level
          # commits and credits will be applied before customer level commits and credits.
          # Plan your priority scheme carefully to ensure credits are applied in the desired
          # order.
          #
          # Access Schedule Required: You must provide an access_schedule that defines when
          # and how much credit becomes available to the customer over time. This usually is
          # aligned to the contract schedule or starts immediately and is set to expire in
          # the future.
          #
          # Usage Guidelines:\
          # ⚠️ Preferred Alternative: In most cases, you should add credits directly to contracts
          # using the contract/create or contract/edit APIs instead of creating customer-level
          # credits. Contract-level credits provide better organization, and are easier for finance
          # teams to recognize revenue, and are the recommended approach for most use cases.
          #
          # @overload create(access_schedule:, customer_id:, priority:, product_id:, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, netsuite_sales_order_id: nil, rate_type: nil, salesforce_opportunity_id: nil, specifiers: nil, uniqueness_key: nil, request_options: {})
          #
          # @param access_schedule [MetronomeSDK::Models::V1::Customers::CreditCreateParams::AccessSchedule] Schedule for distributing the credit to the customer.
          #
          # @param customer_id [String]
          #
          # @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #
          # @param product_id [String]
          #
          # @param applicable_contract_ids [Array<String>] Which contract the credit applies to. If not provided, the credit applies to all
          #
          # @param applicable_product_ids [Array<String>] Which products the credit applies to. If both applicable_product_ids and applica
          #
          # @param applicable_product_tags [Array<String>] Which tags the credit applies to. If both applicable*product_ids and applicable*
          #
          # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          # @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param name [String] displayed on invoices
          #
          # @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param rate_type [Symbol, MetronomeSDK::Models::V1::Customers::CreditCreateParams::RateType]
          #
          # @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          # @param specifiers [Array<MetronomeSDK::Models::V1::Customers::CreditCreateParams::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CreditCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Customers::CreditCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CreditListParams} for more details.
          #
          # Retrieve a detailed list of all credits available to a customer, including
          # promotional credits and contract-specific credits. This endpoint provides
          # comprehensive visibility into credit balances, access schedules, and usage
          # rules, enabling you to build credit management interfaces and track available
          # funding.
          #
          # Use this endpoint to:
          #
          # - Display all available credits in customer billing dashboards
          # - Show credit balances and expiration dates
          # - Track credit usage history with optional ledger details
          # - Build credit management and reporting tools
          # - Monitor promotional credit utilization • Support customer inquiries about
          #   available credits
          #
          # Key response fields: An array of Credit objects containing:
          #
          # - Credit details: Name, priority, and which applicable products/tags it applies
          #   to
          # - Product ID: The product_id of the credit. This is for external mapping into
          #   your quote-to-cash stack, not the product it applies to.
          # - Access schedule: When credits become available and expire
          # - Optional ledger entries: Transaction history (if include_ledgers=true)
          # - Balance information: Current available amount (if include_balance=true)
          # - Metadata: Custom fields and usage specifiers
          #
          # Usage guidelines:
          #
          # - Pagination: Results limited to 25 commits per page; use next_page for more
          # - Date filtering options:
          #   - covering_date: Credits active on a specific date
          #   - starting_at: Credits with access on/after a date
          #   - effective_before: Credits with access before a date (exclusive)
          # - Scope options:
          #   - include_contract_credits: Include contract-level credits (not just
          #     customer-level)
          #   - include_archived: Include archived credits and credits from archived
          #     contracts
          # - Performance considerations:
          #   - include_ledgers: Adds detailed transaction history (slower)
          #   - include_balance: Adds current balance calculation (slower)
          # - Optional filtering: Use credit_id to retrieve a specific commit
          #
          # @overload list(customer_id:, covering_date: nil, credit_id: nil, effective_before: nil, include_archived: nil, include_balance: nil, include_contract_credits: nil, include_ledgers: nil, limit: nil, next_page: nil, starting_at: nil, request_options: {})
          #
          # @param customer_id [String]
          #
          # @param covering_date [Time] Return only credits that have access schedules that "cover" the provided date
          #
          # @param credit_id [String]
          #
          # @param effective_before [Time] Include only credits that have any access before the provided date (exclusive)
          #
          # @param include_archived [Boolean] Include archived credits and credits from archived contracts.
          #
          # @param include_balance [Boolean] Include the balance in the response. Setting this flag may cause the query to be
          #
          # @param include_contract_credits [Boolean] Include credits on the contract level.
          #
          # @param include_ledgers [Boolean] Include credit ledgers in the response. Setting this flag may cause the query to
          #
          # @param limit [Integer] The maximum number of commits to return. Defaults to 25.
          #
          # @param next_page [String] The next page token from a previous response.
          #
          # @param starting_at [Time] Include only credits that have any access on or after the provided date
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::BodyCursorPage<MetronomeSDK::Models::V1::Customers::CreditListResponse>]
          #
          # @see MetronomeSDK::Models::V1::Customers::CreditListParams
          def list(params)
            parsed, options = MetronomeSDK::V1::Customers::CreditListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/list",
              body: parsed,
              page: MetronomeSDK::Internal::BodyCursorPage,
              model: MetronomeSDK::Models::V1::Customers::CreditListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams} for more
          # details.
          #
          # Shortens the end date of an existing customer credit to terminate it earlier
          # than originally scheduled. Only allows moving end dates forward (earlier), not
          # extending them.
          #
          # Note: To extend credit end dates or make comprehensive edits, use the 'edit
          # credit' endpoint instead.
          #
          # @overload update_end_date(access_ending_before:, credit_id:, customer_id:, request_options: {})
          #
          # @param access_ending_before [Time] RFC 3339 timestamp indicating when access to the credit will end and it will no
          #
          # @param credit_id [String] ID of the commit to update
          #
          # @param customer_id [String] ID of the customer whose credit is to be updated
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams
          def update_end_date(params)
            parsed, options = MetronomeSDK::V1::Customers::CreditUpdateEndDateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contracts/customerCredits/updateEndDate",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse,
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
