# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Commits
        # Create a new commit at the customer level.
        #
        # @param params [Metronome::Models::Customers::CommitCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [Metronome::Models::Customers::CommitCreateParams::AccessSchedule] :access_schedule Schedule for distributing the commit to the customer. For "POSTPAID" commits
        #     only one schedule item is allowed and amount must match invoice_schedule total.
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Float] :priority If multiple credits or commits are applicable, the one with the lower priority
        #     will apply first.
        #
        #   @option params [String] :product_id ID of the fixed product associated with the commit. This is required because
        #     products are used to invoice the commit amount.
        #
        #   @option params [Symbol, Metronome::Models::Customers::CommitCreateParams::Type] :type
        #
        #   @option params [Array<String>] :applicable_contract_ids Which contract the commit applies to. If not provided, the commit applies to all
        #     contracts.
        #
        #   @option params [Array<String>] :applicable_product_ids Which products the commit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @option params [Array<String>] :applicable_product_tags Which tags the commit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @option params [Hash{Symbol => String}] :custom_fields
        #
        #   @option params [String] :description Used only in UI/API. It is not exposed to end customers.
        #
        #   @option params [String] :invoice_contract_id The contract that this commit will be billed on. This is required for "POSTPAID"
        #     commits and for "PREPAID" commits unless there is no invoice schedule above
        #     (i.e., the commit is 'free').
        #
        #   @option params [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule] :invoice_schedule Required for "POSTPAID" commits: the true up invoice will be generated at this
        #     time and only one schedule item is allowed; the total must match
        #     accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
        #     will be a "complimentary" commit with no invoice.
        #
        #   @option params [String] :name displayed on invoices
        #
        #   @option params [String] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #
        #   @option params [Symbol, Metronome::Models::Customers::CommitCreateParams::RateType] :rate_type
        #
        #   @option params [String] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
        #
        #   @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a commit or credit
        #     is made with a uniqueness key that was previously used to create a commit or
        #     credit, a new record will not be created and the request will fail with a 409
        #     error.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::CommitCreateResponse]
        #
        def create(params = {}, opts = {})
          parsed = Metronome::Models::Customers::CommitCreateParams.dump(params)
          req = {
            method: :post,
            path: "contracts/customerCommits/create",
            body: parsed,
            model: Metronome::Models::Customers::CommitCreateResponse
          }
          @client.request(req, opts)
        end

        # List commits.
        #
        # @param params [Metronome::Models::Customers::CommitListParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :customer_id
        #
        #   @option params [String] :commit_id
        #
        #   @option params [Time] :covering_date Include only commits that have access schedules that "cover" the provided date
        #
        #   @option params [Time] :effective_before Include only commits that have any access before the provided date (exclusive)
        #
        #   @option params [Boolean] :include_archived Include commits from archived contracts.
        #
        #   @option params [Boolean] :include_balance Include the balance in the response. Setting this flag may cause the query to be
        #     slower.
        #
        #   @option params [Boolean] :include_contract_commits Include commits on the contract level.
        #
        #   @option params [Boolean] :include_ledgers Include commit ledgers in the response. Setting this flag may cause the query to
        #     be slower.
        #
        #   @option params [String] :next_page The next page token from a previous response.
        #
        #   @option params [Time] :starting_at Include only commits that have any access on or after the provided date
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::CommitListResponse]
        #
        def list(params = {}, opts = {})
          parsed = Metronome::Models::Customers::CommitListParams.dump(params)
          req = {
            method: :post,
            path: "contracts/customerCommits/list",
            body: parsed,
            model: Metronome::Models::Customers::CommitListResponse
          }
          @client.request(req, opts)
        end

        # Update the end date of a PREPAID commit
        #
        # @param params [Metronome::Models::Customers::CommitUpdateEndDateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :commit_id ID of the commit to update. Only supports "PREPAID" commits.
        #
        #   @option params [String] :customer_id ID of the customer whose commit is to be updated
        #
        #   @option params [Time] :access_ending_before RFC 3339 timestamp indicating when access to the commit will end and it will no
        #     longer be possible to draw it down (exclusive). If not provided, the access will
        #     not be updated.
        #
        #   @option params [Time] :invoices_ending_before RFC 3339 timestamp indicating when the commit will stop being invoiced
        #     (exclusive). If not provided, the invoice schedule will not be updated.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::CommitUpdateEndDateResponse]
        #
        def update_end_date(params = {}, opts = {})
          parsed = Metronome::Models::Customers::CommitUpdateEndDateParams.dump(params)
          req = {
            method: :post,
            path: "contracts/customerCommits/updateEndDate",
            body: parsed,
            model: Metronome::Models::Customers::CommitUpdateEndDateResponse
          }
          @client.request(req, opts)
        end

        # @param client [Metronome::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
