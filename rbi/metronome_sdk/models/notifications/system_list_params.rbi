# typed: strong

module MetronomeSDK
  module Models
    module Notifications
      class SystemListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Notifications::SystemListParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          params(request_options: MetronomeSDK::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig do
          override.returns({ request_options: MetronomeSDK::RequestOptions })
        end
        def to_hash
        end
      end
    end
  end
end
