# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class CreditGrants
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CreditGrantCreateParams} for more details.
        #
        # Create a new credit grant
        #
        # @overload create(customer_id:, expires_at:, grant_amount:, name:, paid_amount:, priority:, credit_grant_type: nil, custom_fields: nil, effective_at: nil, invoice_date: nil, product_ids: nil, reason: nil, rollover_settings: nil, uniqueness_key: nil, request_options: {})
        #
        # @param customer_id [String] the Metronome ID of the customer
        #
        # @param expires_at [Time] The credit grant will only apply to usage or charges dated before this timestamp
        # ...
        #
        # @param grant_amount [MetronomeSDK::Models::V1::CreditGrantCreateParams::GrantAmount] the amount of credits granted
        #
        # @param name [String] the name of the credit grant as it will appear on invoices
        #
        # @param paid_amount [MetronomeSDK::Models::V1::CreditGrantCreateParams::PaidAmount] the amount paid for this credit grant
        #
        # @param priority [Float]
        #
        # @param credit_grant_type [String]
        #
        # @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the credit grant.
        #
        # @param effective_at [Time] The credit grant will only apply to usage or charges dated on or after this time
        # ...
        #
        # @param invoice_date [Time] The date to issue an invoice for the paid_amount.
        #
        # @param product_ids [Array<String>] The product(s) which these credits will be applied to. (If unspecified, the cred
        # ...
        #
        # @param reason [String]
        #
        # @param rollover_settings [MetronomeSDK::Models::V1::CreditGrantCreateParams::RolloverSettings] Configure a rollover for this credit grant so if it expires it rolls over a conf
        # ...
        #
        # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        # ...
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CreditGrantCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::CreditGrantCreateParams
        def create(params)
          parsed, options = MetronomeSDK::Models::V1::CreditGrantCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/credits/createGrant",
            body: parsed,
            model: MetronomeSDK::Models::V1::CreditGrantCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CreditGrantListParams} for more details.
        #
        # List credit grants. This list does not included voided grants.
        #
        # @overload list(limit: nil, next_page: nil, credit_grant_ids: nil, credit_type_ids: nil, customer_ids: nil, effective_before: nil, not_expiring_before: nil, request_options: {})
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param credit_grant_ids [Array<String>] Body param: An array of credit grant IDs. If this is specified, neither credit_t
        # ...
        #
        # @param credit_type_ids [Array<String>] Body param: An array of credit type IDs. This must not be specified if credit_gr
        # ...
        #
        # @param customer_ids [Array<String>] Body param: An array of Metronome customer IDs. This must not be specified if cr
        # ...
        #
        # @param effective_before [Time] Body param: Only return credit grants that are effective before this timestamp (
        # ...
        #
        # @param not_expiring_before [Time] Body param: Only return credit grants that expire at or after this timestamp.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::CreditGrantListResponse>]
        #
        # @see MetronomeSDK::Models::V1::CreditGrantListParams
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::CreditGrantListParams.dump_request(params)
          query_params = [:limit, :next_page]
          @client.request(
            method: :post,
            path: "v1/credits/listGrants",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::CreditGrantListResponse,
            options: options
          )
        end

        # Edit an existing credit grant
        #
        # @overload edit(id:, credit_grant_type: nil, expires_at: nil, name: nil, request_options: {})
        #
        # @param id [String] the ID of the credit grant
        #
        # @param credit_grant_type [String] the updated credit grant type
        #
        # @param expires_at [Time] the updated expiration date for the credit grant
        #
        # @param name [String] the updated name for the credit grant
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CreditGrantEditResponse]
        #
        # @see MetronomeSDK::Models::V1::CreditGrantEditParams
        def edit(params)
          parsed, options = MetronomeSDK::Models::V1::CreditGrantEditParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/credits/editGrant",
            body: parsed,
            model: MetronomeSDK::Models::V1::CreditGrantEditResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::CreditGrantListEntriesParams} for more details.
        #
        # Fetches a list of credit ledger entries. Returns lists of ledgers per customer.
        # Ledger entries are returned in chronological order. Ledger entries associated
        # with voided credit grants are not included.
        #
        # @overload list_entries(next_page: nil, credit_type_ids: nil, customer_ids: nil, ending_before: nil, starting_on: nil, request_options: {})
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param credit_type_ids [Array<String>] Body param: A list of Metronome credit type IDs to fetch ledger entries for. If
        # ...
        #
        # @param customer_ids [Array<String>] Body param: A list of Metronome customer IDs to fetch ledger entries for. If abs
        # ...
        #
        # @param ending_before [Time] Body param: If supplied, ledger entries will only be returned with an
        # effective\_ ...
        #
        # @param starting_on [Time] Body param: If supplied, only ledger entries effective at or after this time wil
        # ...
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse]
        #
        # @see MetronomeSDK::Models::V1::CreditGrantListEntriesParams
        def list_entries(params = {})
          parsed, options = MetronomeSDK::Models::V1::CreditGrantListEntriesParams.dump_request(params)
          query_params = [:next_page]
          @client.request(
            method: :post,
            path: "v1/credits/listEntries",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse,
            options: options
          )
        end

        # Void a credit grant
        #
        # @overload void(id:, release_uniqueness_key: nil, void_credit_purchase_invoice: nil, request_options: {})
        #
        # @param id [String]
        #
        # @param release_uniqueness_key [Boolean] If true, resets the uniqueness key on this grant so it can be re-used
        #
        # @param void_credit_purchase_invoice [Boolean] If true, void the purchase invoice associated with the grant
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::CreditGrantVoidResponse]
        #
        # @see MetronomeSDK::Models::V1::CreditGrantVoidParams
        def void(params)
          parsed, options = MetronomeSDK::Models::V1::CreditGrantVoidParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/credits/voidGrant",
            body: parsed,
            model: MetronomeSDK::Models::V1::CreditGrantVoidResponse,
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
