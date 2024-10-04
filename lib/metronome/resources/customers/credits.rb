# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Credits
        def initialize(client:)
          @client = client
        end

        # Create a new credit at the customer level.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [AccessSchedule] :access_schedule Schedule for distributing the credit to the customer.
        # @option params [String] :customer_id
        # @option params [Float] :priority If multiple credits or commits are applicable, the one with the lower priority
        #   will apply first.
        # @option params [String] :product_id
        # @option params [Array<String>, nil] :applicable_contract_ids Which contract the credit applies to. If not provided, the credit applies to all
        #   contracts.
        # @option params [Array<String>, nil] :applicable_product_ids Which products the credit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the credit applies to all products.
        # @option params [Array<String>, nil] :applicable_product_tags Which tags the credit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the credit applies to all products.
        # @option params [Hash, nil] :custom_fields
        # @option params [String, nil] :description Used only in UI/API. It is not exposed to end customers.
        # @option params [String, nil] :name displayed on invoices
        # @option params [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        # @option params [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::CreditCreateResponse]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contracts/customerCredits/create"
          req[:body] = params
          req[:model] = Metronome::Models::CreditCreateResponse
          @client.request(req, opts)
        end

        # List credits.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :customer_id
        # @option params [DateTime, nil] :covering_date Return only credits that have access schedules that "cover" the provided date
        # @option params [String, nil] :credit_id
        # @option params [DateTime, nil] :effective_before Include only credits that have any access before the provided date (exclusive)
        # @option params [Boolean, nil] :include_archived Include credits from archived contracts.
        # @option params [Boolean, nil] :include_contract_credits Include credits on the contract level.
        # @option params [Boolean, nil] :include_ledgers Include credit ledgers in the response. Setting this flag may cause the query to
        #   be slower.
        # @option params [String, nil] :next_page The next page token from a previous response.
        # @option params [DateTime, nil] :starting_at Include only credits that have any access on or after the provided date
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::CreditListResponse]
        def list(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contracts/customerCredits/list"
          req[:body] = params
          req[:model] = Metronome::Models::CreditListResponse
          @client.request(req, opts)
        end

        # Update the end date of a credit
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [DateTime] :access_ending_before RFC 3339 timestamp indicating when access to the credit will end and it will no
        #   longer be possible to draw it down (exclusive).
        # @option params [String] :credit_id ID of the commit to update
        # @option params [String] :customer_id ID of the customer whose credit is to be updated
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::CreditUpdateEndDateResponse]
        def update_end_date(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contracts/customerCredits/updateEndDate"
          req[:body] = params
          req[:model] = Metronome::Models::CreditUpdateEndDateResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
