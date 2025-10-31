# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Settings
        class BillingProviderCreateResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :delivery_method_id

            sig { params(delivery_method_id: String).returns(T.attached_class) }
            def self.new(delivery_method_id:)
            end

            sig { override.returns({ delivery_method_id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
