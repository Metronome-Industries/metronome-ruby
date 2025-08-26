# typed: strong

module MetronomeSDK
  module Models
    class CommitHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::CommitHierarchyConfiguration,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.any(
            MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
            MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
            MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
          )
        )
      end
      attr_accessor :child_access

      sig do
        params(
          child_access:
            T.any(
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(child_access:)
      end

      sig do
        override.returns(
          {
            child_access:
              T.any(
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
              )
          }
        )
      end
      def to_hash
      end

      module ChildAccess
        extend MetronomeSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
            )
          end

        class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              type:
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(type:)
          end

          sig do
            override.returns(
              {
                type:
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              type:
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(type:)
          end

          sig do
            override.returns(
              {
                type:
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :contract_ids

          sig do
            returns(
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              contract_ids: T::Array[String],
              type:
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(contract_ids:, type:)
          end

          sig do
            override.returns(
              {
                contract_ids: T::Array[String],
                type:
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTRACT_IDS =
              T.let(
                :CONTRACT_IDS,
                MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::CommitHierarchyConfiguration::ChildAccess::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
