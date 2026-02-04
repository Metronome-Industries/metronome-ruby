# typed: strong

module MetronomeSDK
  module Models
    class BalanceFilter < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::BalanceFilter, MetronomeSDK::Internal::AnyHash)
        end

      # The balance type to filter by.
      sig do
        returns(
          T.nilable(
            T::Array[MetronomeSDK::BalanceFilter::BalanceType::OrSymbol]
          )
        )
      end
      attr_reader :balance_types

      sig do
        params(
          balance_types:
            T::Array[MetronomeSDK::BalanceFilter::BalanceType::OrSymbol]
        ).void
      end
      attr_writer :balance_types

      # Custom fields to compute balance across. Must match all custom fields
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      # Specific IDs to compute balance across.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ids

      sig { params(ids: T::Array[String]).void }
      attr_writer :ids

      sig do
        params(
          balance_types:
            T::Array[MetronomeSDK::BalanceFilter::BalanceType::OrSymbol],
          custom_fields: T::Hash[Symbol, String],
          ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The balance type to filter by.
        balance_types: nil,
        # Custom fields to compute balance across. Must match all custom fields
        custom_fields: nil,
        # Specific IDs to compute balance across.
        ids: nil
      )
      end

      sig do
        override.returns(
          {
            balance_types:
              T::Array[MetronomeSDK::BalanceFilter::BalanceType::OrSymbol],
            custom_fields: T::Hash[Symbol, String],
            ids: T::Array[String]
          }
        )
      end
      def to_hash
      end

      module BalanceType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::BalanceFilter::BalanceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPAID_COMMIT =
          T.let(
            :PREPAID_COMMIT,
            MetronomeSDK::BalanceFilter::BalanceType::TaggedSymbol
          )
        POSTPAID_COMMIT =
          T.let(
            :POSTPAID_COMMIT,
            MetronomeSDK::BalanceFilter::BalanceType::TaggedSymbol
          )
        CREDIT =
          T.let(:CREDIT, MetronomeSDK::BalanceFilter::BalanceType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::BalanceFilter::BalanceType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
