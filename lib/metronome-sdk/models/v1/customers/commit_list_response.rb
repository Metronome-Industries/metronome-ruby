# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CommitListResponse < MetronomeSDK::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::Commit>]
          required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Commit] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!parse
          #   # @param data [Array<MetronomeSDK::Models::Commit>]
          #   # @param next_page [String, nil]
          #   #
          #   def initialize(data:, next_page:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
