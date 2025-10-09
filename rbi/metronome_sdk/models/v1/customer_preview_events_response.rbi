# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerPreviewEventsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerPreviewEventsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[MetronomeSDK::V1::Customers::Invoice]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[MetronomeSDK::V1::Customers::Invoice::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[MetronomeSDK::V1::Customers::Invoice] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
