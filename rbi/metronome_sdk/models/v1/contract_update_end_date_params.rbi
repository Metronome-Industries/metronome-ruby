# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractUpdateEndDateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractUpdateEndDateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the contract to update
        sig { returns(String) }
        attr_accessor :contract_id

        # ID of the customer whose contract is to be updated
        sig { returns(String) }
        attr_accessor :customer_id

        # If true, allows setting the contract end date earlier than the end_timestamp of
        # existing finalized invoices. Finalized invoices will be unchanged; if you want
        # to incorporate the new end date, you can void and regenerate finalized usage
        # invoices. Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_ending_before_finalized_invoice

        sig { params(allow_ending_before_finalized_invoice: T::Boolean).void }
        attr_writer :allow_ending_before_finalized_invoice

        # RFC 3339 timestamp indicating when the contract will end (exclusive). If not
        # provided, the contract will be updated to be open-ended.
        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          params(
            contract_id: String,
            customer_id: String,
            allow_ending_before_finalized_invoice: T::Boolean,
            ending_before: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the contract to update
          contract_id:,
          # ID of the customer whose contract is to be updated
          customer_id:,
          # If true, allows setting the contract end date earlier than the end_timestamp of
          # existing finalized invoices. Finalized invoices will be unchanged; if you want
          # to incorporate the new end date, you can void and regenerate finalized usage
          # invoices. Defaults to true.
          allow_ending_before_finalized_invoice: nil,
          # RFC 3339 timestamp indicating when the contract will end (exclusive). If not
          # provided, the contract will be updated to be open-ended.
          ending_before: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              allow_ending_before_finalized_invoice: T::Boolean,
              ending_before: Time,
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
