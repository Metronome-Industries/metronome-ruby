# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractListBalancesResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit>]
        required :data,
                 -> { MetronomeSDK::ArrayOf[union: MetronomeSDK::Models::V1::ContractListBalancesResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case data
        # in MetronomeSDK::Models::Commit
        #   # ...
        # in MetronomeSDK::Models::Credit
        #   # ...
        # end
        # ```
        class Data < MetronomeSDK::Union
          variant -> { MetronomeSDK::Models::Commit }

          variant -> { MetronomeSDK::Models::Credit }
        end
      end
    end
  end
end
