# typed: strong

module Metronome
  module Resources
    class CreditGrants
      sig do
        params(
          params: T.any(Metronome::Models::CreditGrantCreateParams, T::Hash[Symbol, T.anything]),
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
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CreditGrantCreateResponse)
      end
      def create(
        params,
        customer_id:,
        expires_at:,
        grant_amount:,
        name:,
        paid_amount:,
        priority:,
        credit_grant_type:,
        custom_fields:,
        effective_at:,
        invoice_date:,
        product_ids:,
        reason:,
        rollover_settings:,
        uniqueness_key:,
        request_options: {}
      ); end

      sig do
        params(
          limit: Integer,
          next_page: String,
          credit_grant_ids: T::Array[String],
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          effective_before: Time,
          not_expiring_before: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::CreditGrantListResponse])
      end
      def list(
        limit:,
        next_page:,
        credit_grant_ids:,
        credit_type_ids:,
        customer_ids:,
        effective_before:,
        not_expiring_before:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::CreditGrantEditParams, T::Hash[Symbol, T.anything]),
          id: String,
          credit_grant_type: String,
          expires_at: Time,
          name: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CreditGrantEditResponse)
      end
      def edit(params, id:, credit_grant_type:, expires_at:, name:, request_options: {}); end

      sig do
        params(
          next_page: String,
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          ending_before: Time,
          starting_on: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CreditGrantListEntriesResponse)
      end
      def list_entries(
        next_page:,
        credit_type_ids:,
        customer_ids:,
        ending_before:,
        starting_on:,
        request_options: {}
      )
      end

      sig do
        params(
          params: T.any(Metronome::Models::CreditGrantVoidParams, T::Hash[Symbol, T.anything]),
          id: String,
          release_uniqueness_key: T::Boolean,
          void_credit_purchase_invoice: T::Boolean,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CreditGrantVoidResponse)
      end
      def void(params, id:, release_uniqueness_key:, void_credit_purchase_invoice:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
