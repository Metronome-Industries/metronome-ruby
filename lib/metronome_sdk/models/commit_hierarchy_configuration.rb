# frozen_string_literal: true

module MetronomeSDK
  module Models
    class CommitHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute child_access
      #
      #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]
      required :child_access, union: -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess }

      # @!method initialize(child_access:)
      #   @param child_access [MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]

      # @see MetronomeSDK::Models::CommitHierarchyConfiguration#child_access
      module ChildAccess
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll }

        variant -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone }

        variant -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs }

        class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]
          required :type,
                   enum: -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type }

          # @!method initialize(type:)
          #   @param type [Symbol, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]

          # @see MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            ALL = :ALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]
          required :type,
                   enum: -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type }

          # @!method initialize(type:)
          #   @param type [Symbol, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]

          # @see MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute contract_ids
          #
          #   @return [Array<String>]
          required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]
          required :type,
                   enum: -> { MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type }

          # @!method initialize(contract_ids:, type:)
          #   @param contract_ids [Array<String>]
          #   @param type [Symbol, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]

          # @see MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            CONTRACT_IDS = :CONTRACT_IDS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs)]
      end
    end
  end
end
