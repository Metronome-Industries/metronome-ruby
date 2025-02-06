# typed: strong

module Metronome
  module Models
    class CreditGrantListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :credit_grant_ids

      sig { params(credit_grant_ids: T::Array[String]).void }
      attr_writer :credit_grant_ids

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :credit_type_ids

      sig { params(credit_type_ids: T::Array[String]).void }
      attr_writer :credit_type_ids

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :customer_ids

      sig { params(customer_ids: T::Array[String]).void }
      attr_writer :customer_ids

      sig { returns(T.nilable(Time)) }
      attr_reader :effective_before

      sig { params(effective_before: Time).void }
      attr_writer :effective_before

      sig { returns(T.nilable(Time)) }
      attr_reader :not_expiring_before

      sig { params(not_expiring_before: Time).void }
      attr_writer :not_expiring_before

      sig do
        params(
          limit: Integer,
          next_page: String,
          credit_grant_ids: T::Array[String],
          credit_type_ids: T::Array[String],
          customer_ids: T::Array[String],
          effective_before: Time,
          not_expiring_before: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
        override.returns(
          {
            limit: Integer,
            next_page: String,
            credit_grant_ids: T::Array[String],
            credit_type_ids: T::Array[String],
            customer_ids: T::Array[String],
            effective_before: Time,
            not_expiring_before: Time,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
