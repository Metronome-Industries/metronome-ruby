# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Commits#list
        class CommitListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::Commit>]
          required :data, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Commit] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!method initialize(data:, next_page:)
          #   @param data [Array<MetronomeSDK::Models::Commit>]
          #   @param next_page [String, nil]
        end
      end
    end
  end
end
