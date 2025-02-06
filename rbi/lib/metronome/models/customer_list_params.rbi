# typed: strong

module Metronome
  module Models
    class CustomerListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :customer_ids

      sig { params(customer_ids: T::Array[String]).void }
      attr_writer :customer_ids

      sig { returns(T.nilable(String)) }
      attr_reader :ingest_alias

      sig { params(ingest_alias: String).void }
      attr_writer :ingest_alias

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :only_archived

      sig { params(only_archived: T::Boolean).void }
      attr_writer :only_archived

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :salesforce_account_ids

      sig { params(salesforce_account_ids: T::Array[String]).void }
      attr_writer :salesforce_account_ids

      sig do
        params(
          customer_ids: T::Array[String],
          ingest_alias: String,
          limit: Integer,
          next_page: String,
          only_archived: T::Boolean,
          salesforce_account_ids: T::Array[String],
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        customer_ids: nil,
        ingest_alias: nil,
        limit: nil,
        next_page: nil,
        only_archived: nil,
        salesforce_account_ids: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            customer_ids: T::Array[String],
            ingest_alias: String,
            limit: Integer,
            next_page: String,
            only_archived: T::Boolean,
            salesforce_account_ids: T::Array[String],
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
