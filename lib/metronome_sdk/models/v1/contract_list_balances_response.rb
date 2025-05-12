# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list_balances
      class ContractListBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Commit, MetronomeSDK::Credit>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListBalancesResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!method initialize(data:, next_page:)
        #   @param data [Array<MetronomeSDK::Commit, MetronomeSDK::Credit>]
        #   @param next_page [String, nil]

        module Data
          extend MetronomeSDK::Internal::Type::Union

          variant -> { MetronomeSDK::Commit }

          variant -> { MetronomeSDK::Credit }

          # @!method self.variants
          #   @return [Array(MetronomeSDK::Commit, MetronomeSDK::Credit)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(MetronomeSDK::Commit, MetronomeSDK::Credit) }
          end
        end
      end
    end
  end
end
