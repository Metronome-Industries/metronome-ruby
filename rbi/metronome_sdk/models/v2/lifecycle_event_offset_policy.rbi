# typed: strong

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventOffsetPolicy < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::LifecycleEventOffsetPolicy,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ISO-8601 duration string indicating how much time before or after the base event
        # this notification should be sent. Positive values indicate notifications after
        # the event, negative values indicate notifications before the event. Examples:
        # "P1D" (1 day after), "-PT2H" (2 hours before)
        sig { returns(String) }
        attr_accessor :offset

        # The type of lifecycle event that this offset is based on.
        sig { returns(String) }
        attr_accessor :type

        sig { params(offset: String, type: String).returns(T.attached_class) }
        def self.new(
          # ISO-8601 duration string indicating how much time before or after the base event
          # this notification should be sent. Positive values indicate notifications after
          # the event, negative values indicate notifications before the event. Examples:
          # "P1D" (1 day after), "-PT2H" (2 hours before)
          offset:,
          # The type of lifecycle event that this offset is based on.
          type:
        )
        end

        sig { override.returns({ offset: String, type: String }) }
        def to_hash
        end
      end
    end
  end
end
