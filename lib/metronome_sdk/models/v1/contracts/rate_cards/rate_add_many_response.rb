# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::Rates#add_many
          class RateAddManyResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #   The ID of the rate card to which the rates were added.
            #
            #   @return [MetronomeSDK::Models::ID]
            required :data, -> { MetronomeSDK::Models::ID }

            # @!method initialize(data:)
            #   @param data [MetronomeSDK::Models::ID] The ID of the rate card to which the rates were added.
          end
        end
      end
    end
  end
end
