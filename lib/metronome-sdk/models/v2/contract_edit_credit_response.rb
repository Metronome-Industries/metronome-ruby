# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class ContractEditCreditResponse < MetronomeSDK::BaseModel
        # @!attribute data
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
