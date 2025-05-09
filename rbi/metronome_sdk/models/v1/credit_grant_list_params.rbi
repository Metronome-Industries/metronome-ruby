# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # Max number of results that should be returned
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # An array of credit grant IDs. If this is specified, neither credit_type_ids nor
        # customer_ids may be specified.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :credit_grant_ids

        sig { params(credit_grant_ids: T::Array[String]).void }
        attr_writer :credit_grant_ids

        # An array of credit type IDs. This must not be specified if credit_grant_ids is
        # specified.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :credit_type_ids

        sig { params(credit_type_ids: T::Array[String]).void }
        attr_writer :credit_type_ids

        # An array of Metronome customer IDs. This must not be specified if
        # credit_grant_ids is specified.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :customer_ids

        sig { params(customer_ids: T::Array[String]).void }
        attr_writer :customer_ids

        # Only return credit grants that are effective before this timestamp (exclusive).
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_before

        sig { params(effective_before: Time).void }
        attr_writer :effective_before

        # Only return credit grants that expire at or after this timestamp.
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
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # An array of credit grant IDs. If this is specified, neither credit_type_ids nor
          # customer_ids may be specified.
          credit_grant_ids: nil,
          # An array of credit type IDs. This must not be specified if credit_grant_ids is
          # specified.
          credit_type_ids: nil,
          # An array of Metronome customer IDs. This must not be specified if
          # credit_grant_ids is specified.
          customer_ids: nil,
          # Only return credit grants that are effective before this timestamp (exclusive).
          effective_before: nil,
          # Only return credit grants that expire at or after this timestamp.
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
