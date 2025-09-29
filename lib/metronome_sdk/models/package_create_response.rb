# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Packages#create
    class PackageCreateResponse < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [MetronomeSDK::Models::ID]
      required :data, -> { MetronomeSDK::ID }

      # @!method initialize(data:)
      #   @param data [MetronomeSDK::Models::ID]
    end
  end
end
