# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantVoidParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CreditGrantVoidParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # If true, resets the uniqueness key on this grant so it can be re-used
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :release_uniqueness_key

        sig { params(release_uniqueness_key: T::Boolean).void }
        attr_writer :release_uniqueness_key

        # If true, void the purchase invoice associated with the grant
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :void_credit_purchase_invoice

        sig { params(void_credit_purchase_invoice: T::Boolean).void }
        attr_writer :void_credit_purchase_invoice

        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            void_credit_purchase_invoice: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # If true, resets the uniqueness key on this grant so it can be re-used
          release_uniqueness_key: nil,
          # If true, void the purchase invoice associated with the grant
          void_credit_purchase_invoice: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              release_uniqueness_key: T::Boolean,
              void_credit_purchase_invoice: T::Boolean,
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
