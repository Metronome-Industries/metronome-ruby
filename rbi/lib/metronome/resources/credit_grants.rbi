# typed: strong

module Metronome
  module Resources
    class CreditGrants
      sig do
        params(
          customer_id: String,
          expires_at: Time,
          grant_amount: Metronome::Models::CreditGrantCreateParams::GrantAmount,
          name: String,
          paid_amount: Metronome::Models::CreditGrantCreateParams::PaidAmount,
          priority: Float,
          credit_grant_type: String,
          custom_fields: T::Hash[Symbol, String],
          effective_at: Time,
          invoice_date: Time,
          product_ids: T::Array[String],
          reason: String,
          rollover_settings: Metronome::Models::CreditGrantCreateParams::RolloverSettings,
          uniqueness_key: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::CreditGrantCreateResponse)
      end
      def create(
        customer_id:,
        expires_at:,
        grant_amount:,
        name:,
        paid_amount:,
        priority:,
        credit_grant_type: nil,
        custom_fields: nil,
        effective_at: nil,
        invoice_date: nil,
        product_ids: nil,
        reason: nil,
        rollover_settings: nil,
        uniqueness_key: nil,
        request_options: {}
      )
      end

      sig do
        params(
          limit: Integer,
          next_page: String,
          credit_grant_ids: T::Array[String],
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          effective_before: Time,
          not_expiring_before: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::CursorPage[Metronome::Models::CreditGrantListResponse])
      end
      def list(
        limit: nil,
        next_page: nil,
        credit_grant_ids: nil,
        credit_type_ids: nil,
        customer_ids: nil,
        effective_before: nil,
        not_expiring_before: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          credit_grant_type: String,
          expires_at: Time,
          name: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::CreditGrantEditResponse)
      end
      def edit(id:, credit_grant_type: nil, expires_at: nil, name: nil, request_options: {})
      end

      sig do
        params(
          next_page: String,
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          ending_before: Time,
          starting_on: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::CreditGrantListEntriesResponse)
      end
      def list_entries(
        next_page: nil,
        credit_type_ids: nil,
        customer_ids: nil,
        ending_before: nil,
        starting_on: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          release_uniqueness_key: T::Boolean,
          void_credit_purchase_invoice: T::Boolean,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::CreditGrantVoidResponse)
      end
      def void(id:, release_uniqueness_key: nil, void_credit_purchase_invoice: nil, request_options: {})
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:)
      end
    end
  end
end
