# typed: strong

module MetronomeSDK
  module Models
    class CommitSpecifierInput < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::CommitSpecifierInput,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :presentation_group_values

      sig { params(presentation_group_values: T::Hash[Symbol, String]).void }
      attr_writer :presentation_group_values

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :pricing_group_values

      sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
      attr_writer :pricing_group_values

      # If provided, the specifier will only apply to the product with the specified ID.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # If provided, the specifier will only apply to products with all the specified
      # tags.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_tags

      sig { params(product_tags: T::Array[String]).void }
      attr_writer :product_tags

      sig do
        params(
          presentation_group_values: T::Hash[Symbol, String],
          pricing_group_values: T::Hash[Symbol, String],
          product_id: String,
          product_tags: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        presentation_group_values: nil,
        pricing_group_values: nil,
        # If provided, the specifier will only apply to the product with the specified ID.
        product_id: nil,
        # If provided, the specifier will only apply to products with all the specified
        # tags.
        product_tags: nil
      )
      end

      sig do
        override.returns(
          {
            presentation_group_values: T::Hash[Symbol, String],
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
