# typed: strong

module MetronomeSDK
  module Models
    module V2
      module Notifications
        class OffsetEditResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V2::Notifications::OffsetEditResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::V2::Notifications::OffsetEditResponse::Data::Variants
            )
          end
          attr_accessor :data

          sig do
            params(
              data:
                T.any(
                  MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::OrHash,
                  MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  MetronomeSDK::Models::V2::Notifications::OffsetEditResponse::Data::Variants
              }
            )
          end
          def to_hash
          end

          module Data
            extend MetronomeSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::LifecycleEventSystemNotificationConfig,
                  MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
                )
              end

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V2::Notifications::OffsetEditResponse::Data::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
