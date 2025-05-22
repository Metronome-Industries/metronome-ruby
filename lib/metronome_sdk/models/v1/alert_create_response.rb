# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Alerts#create
      class AlertCreateResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::ID]
        required :data, -> { MetronomeSDK::ID }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::ID]
      end
    end
  end
end
