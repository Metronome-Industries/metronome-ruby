# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#set_name
      class CustomerSetNameResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::Customer]
        required :data, -> { MetronomeSDK::V1::Customer }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::Customer]
      end
    end
  end
end
