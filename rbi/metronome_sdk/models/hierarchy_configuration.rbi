# typed: strong

module MetronomeSDK
  module Models
    # Either a **parent** configuration with a list of children or a **child**
    # configuration with a single parent.
    module HierarchyConfiguration
      extend MetronomeSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration,
            MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration
          )
        end

      class ParentHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # List of contracts that belong to this parent.
        sig do
          returns(
            T::Array[
              MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::Child
            ]
          )
        end
        attr_accessor :children

        sig do
          params(
            children:
              T::Array[
                MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::Child::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of contracts that belong to this parent.
          children:
        )
        end

        sig do
          override.returns(
            {
              children:
                T::Array[
                  MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::Child
                ]
            }
          )
        end
        def to_hash
        end

        class Child < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::Child,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :contract_id

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            params(contract_id: String, customer_id: String).returns(
              T.attached_class
            )
          end
          def self.new(contract_id:, customer_id:)
          end

          sig { override.returns({ contract_id: String, customer_id: String }) }
          def to_hash
          end
        end
      end

      class ChildHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The single parent contract/customer for this child.
        sig do
          returns(
            MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::Parent
          )
        end
        attr_reader :parent

        sig do
          params(
            parent:
              MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::Parent::OrHash
          ).void
        end
        attr_writer :parent

        sig do
          params(
            parent:
              MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::Parent::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The single parent contract/customer for this child.
          parent:
        )
        end

        sig do
          override.returns(
            {
              parent:
                MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::Parent
            }
          )
        end
        def to_hash
        end

        class Parent < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::Parent,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :contract_id

          sig { returns(String) }
          attr_accessor :customer_id

          # The single parent contract/customer for this child.
          sig do
            params(contract_id: String, customer_id: String).returns(
              T.attached_class
            )
          end
          def self.new(contract_id:, customer_id:)
          end

          sig { override.returns({ contract_id: String, customer_id: String }) }
          def to_hash
          end
        end
      end

      sig do
        override.returns(
          T::Array[MetronomeSDK::HierarchyConfiguration::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
