# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class CreditGrants
        # Create a new credit grant. This is a Plans (deprecated) endpoint. New clients
        # should implement using Contracts.
        sig do
          params(
            customer_id: String,
            expires_at: Time,
            grant_amount:
              MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount::OrHash,
            name: String,
            paid_amount:
              MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount::OrHash,
            priority: Float,
            credit_grant_type: String,
            custom_fields: T::Hash[Symbol, String],
            effective_at: Time,
            invoice_date: Time,
            product_ids: T::Array[String],
            reason: String,
            rollover_settings:
              MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::OrHash,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CreditGrantCreateResponse)
        end
        def create(
          # the Metronome ID of the customer
          customer_id:,
          # The credit grant will only apply to usage or charges dated before this timestamp
          expires_at:,
          # the amount of credits granted
          grant_amount:,
          # the name of the credit grant as it will appear on invoices
          name:,
          # the amount paid for this credit grant
          paid_amount:,
          priority:,
          credit_grant_type: nil,
          # Custom fields to attach to the credit grant.
          custom_fields: nil,
          # The credit grant will only apply to usage or charges dated on or after this
          # timestamp
          effective_at: nil,
          # The date to issue an invoice for the paid_amount.
          invoice_date: nil,
          # The product(s) which these credits will be applied to. (If unspecified, the
          # credits will be applied to charges for all products.). The array ordering
          # specified here will be used to determine the order in which credits will be
          # applied to invoice line items
          product_ids: nil,
          reason: nil,
          # Configure a rollover for this credit grant so if it expires it rolls over a
          # configured amount to a new credit grant. This feature is currently opt-in only.
          # Contact Metronome to be added to the beta.
          rollover_settings: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          request_options: {}
        )
        end

        # List credit grants. This list does not included voided grants. This is a Plans
        # (deprecated) endpoint. New clients should implement using Contracts.
        sig do
          params(
            limit: Integer,
            next_page: String,
            credit_grant_ids: T::Array[String],
            credit_type_ids: T::Array[String],
            customer_ids: T::Array[String],
            effective_before: Time,
            not_expiring_before: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::CreditGrantListResponse
            ]
          )
        end
        def list(
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: An array of credit grant IDs. If this is specified, neither
          # credit_type_ids nor customer_ids may be specified.
          credit_grant_ids: nil,
          # Body param: An array of credit type IDs. This must not be specified if
          # credit_grant_ids is specified.
          credit_type_ids: nil,
          # Body param: An array of Metronome customer IDs. This must not be specified if
          # credit_grant_ids is specified.
          customer_ids: nil,
          # Body param: Only return credit grants that are effective before this timestamp
          # (exclusive).
          effective_before: nil,
          # Body param: Only return credit grants that expire at or after this timestamp.
          not_expiring_before: nil,
          request_options: {}
        )
        end

        # Edit an existing credit grant. This is a Plans (deprecated) endpoint. New
        # clients should implement using Contracts.
        sig do
          params(
            id: String,
            credit_grant_type: String,
            expires_at: Time,
            name: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CreditGrantEditResponse)
        end
        def edit(
          # the ID of the credit grant
          id:,
          # the updated credit grant type
          credit_grant_type: nil,
          # the updated expiration date for the credit grant
          expires_at: nil,
          # the updated name for the credit grant
          name: nil,
          request_options: {}
        )
        end

        # Fetches a list of credit ledger entries. Returns lists of ledgers per customer.
        # Ledger entries are returned in chronological order. Ledger entries associated
        # with voided credit grants are not included. This is a Plans (deprecated)
        # endpoint. New clients should implement using Contracts.
        sig do
          params(
            next_page: String,
            sort:
              MetronomeSDK::V1::CreditGrantListEntriesParams::Sort::OrSymbol,
            credit_type_ids: T::Array[String],
            customer_ids: T::Array[String],
            ending_before: Time,
            starting_on: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPageWithoutLimit[
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse
            ]
          )
        end
        def list_entries(
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Query param: Ledgers sort order by date, asc or desc. Defaults to asc.
          sort: nil,
          # Body param: A list of Metronome credit type IDs to fetch ledger entries for. If
          # absent, ledger entries for all credit types will be returned.
          credit_type_ids: nil,
          # Body param: A list of Metronome customer IDs to fetch ledger entries for. If
          # absent, ledger entries for all customers will be returned.
          customer_ids: nil,
          # Body param: If supplied, ledger entries will only be returned with an
          # effective_at before this time. This timestamp must not be in the future. If no
          # timestamp is supplied, all entries up to the start of the customer's next
          # billing period will be returned.
          ending_before: nil,
          # Body param: If supplied, only ledger entries effective at or after this time
          # will be returned.
          starting_on: nil,
          request_options: {}
        )
        end

        # Void a credit grant. This is a Plans (deprecated) endpoint. New clients should
        # implement using Contracts.
        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            void_credit_purchase_invoice: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::CreditGrantVoidResponse)
        end
        def void(
          id:,
          # If true, resets the uniqueness key on this grant so it can be re-used
          release_uniqueness_key: nil,
          # If true, void the purchase invoice associated with the grant
          void_credit_purchase_invoice: nil,
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
