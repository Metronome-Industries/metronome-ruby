# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListEntriesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # A list of Metronome credit type IDs to fetch ledger entries for. If absent,
        # ledger entries for all credit types will be returned.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :credit_type_ids

        sig { params(credit_type_ids: T::Array[String]).void }
        attr_writer :credit_type_ids

        # A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger
        # entries for all customers will be returned.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :customer_ids

        sig { params(customer_ids: T::Array[String]).void }
        attr_writer :customer_ids

        # If supplied, ledger entries will only be returned with an effective_at before
        # this time. This timestamp must not be in the future. If no timestamp is
        # supplied, all entries up to the start of the customer's next billing period will
        # be returned.
        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        # If supplied, only ledger entries effective at or after this time will be
        # returned.
        sig { returns(T.nilable(Time)) }
        attr_reader :starting_on

        sig { params(starting_on: Time).void }
        attr_writer :starting_on

        sig do
          params(
            next_page: String,
            credit_type_ids: T::Array[String],
            customer_ids: T::Array[String],
            ending_before: Time,
            starting_on: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # A list of Metronome credit type IDs to fetch ledger entries for. If absent,
          # ledger entries for all credit types will be returned.
          credit_type_ids: nil,
          # A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger
          # entries for all customers will be returned.
          customer_ids: nil,
          # If supplied, ledger entries will only be returned with an effective_at before
          # this time. This timestamp must not be in the future. If no timestamp is
          # supplied, all entries up to the start of the customer's next billing period will
          # be returned.
          ending_before: nil,
          # If supplied, only ledger entries effective at or after this time will be
          # returned.
          starting_on: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              next_page: String,
              credit_type_ids: T::Array[String],
              customer_ids: T::Array[String],
              ending_before: Time,
              starting_on: Time,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
