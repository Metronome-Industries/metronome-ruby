# frozen_string_literal: true

module Metronome
  module Resources
    class Credits
      def initialize(client:)
        @client = client
      end

      # Create a new credit grant
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :customer_id the Metronome ID of the customer
      # @option params [String] :expires_at The credit grant will only apply to billing periods that end before this
      #   timestamp.
      # @option params [GrantAmount] :grant_amount the amount of credits granted
      # @option params [String] :name the name of the credit grant as it will appear on invoices
      # @option params [PaidAmount] :paid_amount the amount paid for this credit grant
      # @option params [Float] :priority
      # @option params [String] :credit_grant_type
      # @option params [Hash] :custom_fields Custom fields to attach to the credit grant.
      # @option params [String] :effective_at The credit grant will only apply to billing periods that end at or after this
      #   timestamp.
      # @option params [String] :invoice_date The date to issue an invoice for the paid_amount.
      # @option params [Array<String>] :product_ids The product(s) which these credits will be applied to. (If unspecified, the
      #   credits will be applied to charges for all products.). The array ordering
      #   specified here will be used to determine the order in which credits will be
      #   applied to invoice line items
      # @option params [String] :reason
      # @option params [RolloverSettings] :rollover_settings Configure a rollover for this credit grant so if it expires it rolls over a
      #   configured amount to a new credit grant. This feature is currently opt-in only.
      #   Contact Metronome to be added to the beta.
      # @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
      #   with a previously used uniqueness key, a new record will not be created and the
      #   request will fail with a 409 error.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::CreditCreateGrantResponse]
      def create_grant(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/credits/createGrant"
        req[:body] = params
        req[:model] = Metronome::Models::CreditCreateGrantResponse
        @client.request(req, opts)
      end

      # Edit an existing credit grant
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id the ID of the credit grant
      # @option params [String] :expires_at the updated expiration date for the credit grant
      # @option params [String] :name the updated name for the credit grant
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::CreditEditGrantResponse]
      def edit_grant(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/credits/editGrant"
        req[:body] = params
        req[:model] = Metronome::Models::CreditEditGrantResponse
        @client.request(req, opts)
      end

      # Fetches a list of credit ledger entries. Returns lists of ledgers per customer.
      #   Ledger entries are returned in reverse chronological order. Ledger entries
      #   associated with voided credit grants are not included.
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      # @option params [Array<String>] :credit_type_ids Body param: A list of Metronome credit type IDs to fetch ledger entries for. If
      #   absent, ledger entries for all credit types will be returned.
      # @option params [Array<String>] :customer_ids Body param: A list of Metronome customer IDs to fetch ledger entries for. If
      #   absent, ledger entries for all customers will be returned.
      # @option params [String] :ending_before Body param: If supplied, ledger entries will only be returned with an
      #   effective_at before this time. This timestamp must not be in the future. If no
      #   timestamp is supplied, all entries up to the start of the customer's next
      #   billing period will be returned.
      # @option params [String] :starting_on Body param: If supplied, only ledger entries effective at or after this time
      #   will be returned.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::CreditListEntriesResponse]
      def list_entries(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/credits/listEntries"
        query_params = [:next_page]
        req[:query] = params.slice(*query_params)
        req[:body] = params.except(*query_params)
        req[:model] = Metronome::Models::CreditListEntriesResponse
        @client.request(req, opts)
      end

      # List credit grants. This list does not included voided grants.
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      # @option params [Array<String>] :credit_grant_ids Body param: An array of credit grant IDs. If this is specified, neither
      #   credit_type_ids nor customer_ids may be specified.
      # @option params [Array<String>] :credit_type_ids Body param: An array of credit type IDs. This must not be specified if
      #   credit_grant_ids is specified.
      # @option params [Array<String>] :customer_ids Body param: An array of Metronome customer IDs. This must not be specified if
      #   credit_grant_ids is specified.
      # @option params [String] :effective_before Body param: Only return credit grants that are effective before this timestamp
      #   (exclusive).
      # @option params [String] :not_expiring_before Body param: Only return credit grants that expire at or after this timestamp.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::CreditListGrantsResponse]
      def list_grants(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/credits/listGrants"
        query_params = [:next_page]
        req[:query] = params.slice(*query_params)
        req[:body] = params.except(*query_params)
        req[:model] = Metronome::Models::CreditListGrantsResponse
        @client.request(req, opts)
      end

      # Void a credit grant
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id
      # @option params [Boolean] :void_credit_purchase_invoice If true, void the purchase invoice associated with the grant
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::CreditVoidGrantResponse]
      def void_grant(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/credits/voidGrant"
        req[:body] = params
        req[:model] = Metronome::Models::CreditVoidGrantResponse
        @client.request(req, opts)
      end
    end
  end
end
