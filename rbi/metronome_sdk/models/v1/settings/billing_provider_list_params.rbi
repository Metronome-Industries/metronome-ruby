# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Settings
        class BillingProviderListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Settings::BillingProviderListParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The cursor to the next page of results
          sig { returns(T.nilable(String)) }
          attr_accessor :next_page

          sig do
            params(
              next_page: T.nilable(String),
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The cursor to the next page of results
            next_page: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                next_page: T.nilable(String),
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
end
