# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::ContractRetrieveParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contract_id

        sig { returns(String) }
        attr_accessor :customer_id

        # Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used
        # with include_ledgers parameter.
        sig { returns(T.nilable(Time)) }
        attr_reader :as_of_date

        sig { params(as_of_date: Time).void }
        attr_writer :as_of_date

        # Include the balance of credits and commits in the response. Setting this flag
        # may cause the query to be slower.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_balance

        sig { params(include_balance: T::Boolean).void }
        attr_writer :include_balance

        # Include commit/credit ledgers in the response. Setting this flag may cause the
        # query to be slower. Cannot be used with as_of_date parameter.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_ledgers

        sig { params(include_ledgers: T::Boolean).void }
        attr_writer :include_ledgers

        sig do
          params(
            contract_id: String,
            customer_id: String,
            as_of_date: Time,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          contract_id:,
          customer_id:,
          # Optional RFC 3339 timestamp. Return the contract as of this date. Cannot be used
          # with include_ledgers parameter.
          as_of_date: nil,
          # Include the balance of credits and commits in the response. Setting this flag
          # may cause the query to be slower.
          include_balance: nil,
          # Include commit/credit ledgers in the response. Setting this flag may cause the
          # query to be slower. Cannot be used with as_of_date parameter.
          include_ledgers: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              as_of_date: Time,
              include_balance: T::Boolean,
              include_ledgers: T::Boolean,
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
