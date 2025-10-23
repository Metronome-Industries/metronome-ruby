# typed: strong

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventSystemPolicy < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::LifecycleEventSystemPolicy,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The type of lifecycle event (e.g., "contract.create", "contract.start")
        sig { returns(String) }
        attr_accessor :type

        sig { params(type: String).returns(T.attached_class) }
        def self.new(
          # The type of lifecycle event (e.g., "contract.create", "contract.start")
          type:
        )
        end

        sig { override.returns({ type: String }) }
        def to_hash
        end
      end
    end
  end
end
