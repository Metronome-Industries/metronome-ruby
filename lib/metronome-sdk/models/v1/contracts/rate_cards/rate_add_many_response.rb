# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddManyResponse < MetronomeSDK::BaseModel
            # @!attribute data
            #   The ID of the rate card to which the rates were added.
            #
            #   @return [MetronomeSDK::Models::ID]
            required :data, -> { MetronomeSDK::Models::ID }

            # @!parse
            #   # @param data [MetronomeSDK::Models::ID]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end
      end
    end
  end
end
