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
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data]
            required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data }

            # @!method initialize(data:)
            #   @param data [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse::Data] The ID of the rate card to which the rates were added.

            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse#data
            class Data < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   The ID of the rate card to which the rates were added.
              #
              #   @param id [String]
            end
          end
        end
      end
    end
  end
end
