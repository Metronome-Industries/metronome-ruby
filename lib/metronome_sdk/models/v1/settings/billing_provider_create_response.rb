# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Settings
        # @see MetronomeSDK::Resources::V1::Settings::BillingProviders#create
        class BillingProviderCreateResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data]

          # @see MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse#data
          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute delivery_method_id
            #
            #   @return [String]
            required :delivery_method_id, String

            # @!method initialize(delivery_method_id:)
            #   @param delivery_method_id [String]
          end
        end
      end
    end
  end
end
