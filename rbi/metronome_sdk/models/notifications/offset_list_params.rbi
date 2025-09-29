# typed: strong

module MetronomeSDK
  module Models
    module Notifications
      class OffsetListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Notifications::OffsetListParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(Float)) }
        attr_reader :limit

        sig { params(limit: Float).void }
        attr_writer :limit

        sig do
          params(
            cursor: String,
            limit: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(cursor: nil, limit: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              cursor: String,
              limit: Float,
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
