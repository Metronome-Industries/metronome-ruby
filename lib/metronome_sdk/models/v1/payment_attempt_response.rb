# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Payments#attempt
      class PaymentAttemptResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::Payment]
        required :data, -> { MetronomeSDK::V1::Payment }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::Payment]
      end
    end
  end
end
