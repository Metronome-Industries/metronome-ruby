# typed: strong

module Metronome
  module Models
    class PlanListResponse < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig do
        params(id: String, description: String, name: String, custom_fields: T::Hash[Symbol, String]).void
      end
      def initialize(id:, description:, name:, custom_fields: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            description: String,
            name: String,
            custom_fields: T::Hash[Symbol, String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
