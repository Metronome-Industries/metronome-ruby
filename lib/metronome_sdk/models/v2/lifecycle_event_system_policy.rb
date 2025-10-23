# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventSystemPolicy < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of lifecycle event (e.g., "contract.create", "contract.start")
        #
        #   @return [String]
        required :type, String

        # @!method initialize(type:)
        #   @param type [String] The type of lifecycle event (e.g., "contract.create", "contract.start")
      end
    end
  end
end
