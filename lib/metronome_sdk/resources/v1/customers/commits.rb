# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Commits
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::CommitCreateParams} for more details.
          #
          # Create a new commit at the customer level.
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
          # @param custom_fields [Hash{Symbol=>String}]
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
          # List commits.
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
          # Pull forward the end date of a prepaid commit. Use the "edit a commit" endpoint
          # to extend the end date of a prepaid commit, or to make other edits to the
          # commit.
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
