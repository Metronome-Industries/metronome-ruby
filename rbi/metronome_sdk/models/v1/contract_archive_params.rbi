# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractArchiveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractArchiveParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the contract to archive
        sig { returns(String) }
        attr_accessor :contract_id

        # ID of the customer whose contract is to be archived
        sig { returns(String) }
        attr_accessor :customer_id

        # If false, the existing finalized invoices will remain after the contract is
        # archived.
        sig { returns(T::Boolean) }
        attr_accessor :void_invoices

        sig do
          params(
            contract_id: String,
            customer_id: String,
            void_invoices: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the contract to archive
          contract_id:,
          # ID of the customer whose contract is to be archived
          customer_id:,
          # If false, the existing finalized invoices will remain after the contract is
          # archived.
          void_invoices:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              void_invoices: T::Boolean,
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
