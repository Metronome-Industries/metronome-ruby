# frozen_string_literal: true

module Metronome
  module Resources
    class CreditGrants
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Create a new credit grant
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::CreditGrantCreateParams] Attributes to send in this request.
      #
      #   @option params [String] :customer_id the Metronome ID of the customer
      #
      #   @option params [Time] :expires_at The credit grant will only apply to usage or charges dated before this timestamp
      #
      #   @option params [Metronome::Models::CreditGrantCreateParams::GrantAmount] :grant_amount the amount of credits granted
      #
      #   @option params [String] :name the name of the credit grant as it will appear on invoices
      #
      #   @option params [Metronome::Models::CreditGrantCreateParams::PaidAmount] :paid_amount the amount paid for this credit grant
      #
      #   @option params [Float] :priority
      #
      #   @option params [String, nil] :credit_grant_type
      #
      #   @option params [Hash{Symbol => String}, nil] :custom_fields Custom fields to attach to the credit grant.
      #
      #   @option params [Time, nil] :effective_at The credit grant will only apply to usage or charges dated on or after this
      #     timestamp
      #
      #   @option params [Time, nil] :invoice_date The date to issue an invoice for the paid_amount.
      #
      #   @option params [Array<String>, nil] :product_ids The product(s) which these credits will be applied to. (If unspecified, the
      #     credits will be applied to charges for all products.). The array ordering
      #     specified here will be used to determine the order in which credits will be
      #     applied to invoice line items
      #
      #   @option params [String, nil] :reason
      #
      #   @option params [Metronome::Models::CreditGrantCreateParams::RolloverSettings, nil] :rollover_settings Configure a rollover for this credit grant so if it expires it rolls over a
      #     configured amount to a new credit grant. This feature is currently opt-in only.
      #     Contact Metronome to be added to the beta.
      #
      #   @option params [String, nil] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
      #     with a previously used uniqueness key, a new record will not be created and the
      #     request will fail with a 409 error.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CreditGrantCreateResponse]
      def create(params = {}, opts = {})
        parsed = Metronome::Models::CreditGrantCreateParams.dump(params)
        req = {
          method: :post,
          path: "credits/createGrant",
          body: parsed,
          model: Metronome::Models::CreditGrantCreateResponse
        }
        @client.request(req, opts)
      end

      # List credit grants. This list does not included voided grants.
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::CreditGrantListParams] Attributes to send in this request.
      #
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Array<String>, nil] :credit_grant_ids Body param: An array of credit grant IDs. If this is specified, neither
      #     credit_type_ids nor customer_ids may be specified.
      #
      #   @option params [Array<String>, nil] :credit_type_ids Body param: An array of credit type IDs. This must not be specified if
      #     credit_grant_ids is specified.
      #
      #   @option params [Array<String>, nil] :customer_ids Body param: An array of Metronome customer IDs. This must not be specified if
      #     credit_grant_ids is specified.
      #
      #   @option params [Time, nil] :effective_before Body param: Only return credit grants that are effective before this timestamp
      #     (exclusive).
      #
      #   @option params [Time, nil] :not_expiring_before Body param: Only return credit grants that expire at or after this timestamp.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CreditGrantListResponse>]
      def list(params = {}, opts = {})
        parsed = Metronome::Models::CreditGrantListParams.dump(params)
        query_params = [:limit, :next_page]
        req = {
          method: :post,
          path: "credits/listGrants",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          page: Metronome::CursorPage,
          model: Metronome::Models::CreditGrantListResponse
        }
        @client.request(req, opts)
      end

      # Edit an existing credit grant
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::CreditGrantEditParams] Attributes to send in this request.
      #
      #   @option params [String] :id the ID of the credit grant
      #
      #   @option params [String, nil] :credit_grant_type the updated credit grant type
      #
      #   @option params [Time, nil] :expires_at the updated expiration date for the credit grant
      #
      #   @option params [String, nil] :name the updated name for the credit grant
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CreditGrantEditResponse]
      def edit(params = {}, opts = {})
        parsed = Metronome::Models::CreditGrantEditParams.dump(params)
        req = {
          method: :post,
          path: "credits/editGrant",
          body: parsed,
          model: Metronome::Models::CreditGrantEditResponse
        }
        @client.request(req, opts)
      end

      # List all pricing units (known in the API by the legacy term "credit types").
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::CreditGrantListCreditTypesParams] Attributes to send in this request.
      #
      #   @option params [Integer, nil] :limit Max number of results that should be returned
      #
      #   @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::CreditGrantListCreditTypesResponse>]
      def list_credit_types(params = {}, opts = {})
        parsed = Metronome::Models::CreditGrantListCreditTypesParams.dump(params)
        req = {
          method: :get,
          path: "credit-types/list",
          query: parsed,
          page: Metronome::CursorPage,
          model: Metronome::Models::CreditGrantListCreditTypesResponse
        }
        @client.request(req, opts)
      end

      # Fetches a list of credit ledger entries. Returns lists of ledgers per customer.
      #   Ledger entries are returned in chronological order. Ledger entries associated
      #   with voided credit grants are not included.
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::CreditGrantListEntriesParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Array<String>, nil] :credit_type_ids Body param: A list of Metronome credit type IDs to fetch ledger entries for. If
      #     absent, ledger entries for all credit types will be returned.
      #
      #   @option params [Array<String>, nil] :customer_ids Body param: A list of Metronome customer IDs to fetch ledger entries for. If
      #     absent, ledger entries for all customers will be returned.
      #
      #   @option params [Time, nil] :ending_before Body param: If supplied, ledger entries will only be returned with an
      #     effective_at before this time. This timestamp must not be in the future. If no
      #     timestamp is supplied, all entries up to the start of the customer's next
      #     billing period will be returned.
      #
      #   @option params [Time, nil] :starting_on Body param: If supplied, only ledger entries effective at or after this time
      #     will be returned.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CreditGrantListEntriesResponse]
      def list_entries(params = {}, opts = {})
        parsed = Metronome::Models::CreditGrantListEntriesParams.dump(params)
        query_params = [:next_page]
        req = {
          method: :post,
          path: "credits/listEntries",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Metronome::Models::CreditGrantListEntriesResponse
        }
        @client.request(req, opts)
      end

      # Void a credit grant
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::CreditGrantVoidParams] Attributes to send in this request.
      #
      #   @option params [String] :id
      #
      #   @option params [Boolean, nil] :release_uniqueness_key If true, resets the uniqueness key on this grant so it can be re-used
      #
      #   @option params [Boolean, nil] :void_credit_purchase_invoice If true, void the purchase invoice associated with the grant
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CreditGrantVoidResponse]
      def void(params = {}, opts = {})
        parsed = Metronome::Models::CreditGrantVoidParams.dump(params)
        req = {
          method: :post,
          path: "credits/voidGrant",
          body: parsed,
          model: Metronome::Models::CreditGrantVoidResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
