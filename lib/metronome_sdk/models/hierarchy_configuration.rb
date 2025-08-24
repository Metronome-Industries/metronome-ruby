# frozen_string_literal: true

module MetronomeSDK
  module Models
    # Either a **parent** configuration with a list of children or a **child**
    # configuration with a single parent.
    module HierarchyConfiguration
      extend MetronomeSDK::Internal::Type::Union

      variant -> { MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration }

      variant -> { MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration }

      class ParentHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute children
        #   List of contracts that belong to this parent.
        #
        #   @return [Array<MetronomeSDK::Models::HierarchyConfiguration::ParentHierarchyConfiguration::Child>]
        required :children,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::Child] }

        # @!method initialize(children:)
        #   @param children [Array<MetronomeSDK::Models::HierarchyConfiguration::ParentHierarchyConfiguration::Child>] List of contracts that belong to this parent.

        class Child < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute contract_id
          #
          #   @return [String]
          required :contract_id, String

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!method initialize(contract_id:, customer_id:)
          #   @param contract_id [String]
          #   @param customer_id [String]
        end
      end

      class ChildHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute parent
        #   The single parent contract/customer for this child.
        #
        #   @return [MetronomeSDK::Models::HierarchyConfiguration::ChildHierarchyConfiguration::Parent]
        required :parent, -> { MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::Parent }

        # @!method initialize(parent:)
        #   @param parent [MetronomeSDK::Models::HierarchyConfiguration::ChildHierarchyConfiguration::Parent] The single parent contract/customer for this child.

        # @see MetronomeSDK::Models::HierarchyConfiguration::ChildHierarchyConfiguration#parent
        class Parent < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute contract_id
          #
          #   @return [String]
          required :contract_id, String

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!method initialize(contract_id:, customer_id:)
          #   The single parent contract/customer for this child.
          #
          #   @param contract_id [String]
          #   @param customer_id [String]
        end
      end

      # @!method self.variants
      #   @return [Array(MetronomeSDK::Models::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::HierarchyConfiguration::ChildHierarchyConfiguration)]
    end
  end
end
