# typed: strong

module Metronome
  module Models
    class BaseUsageFilter < Metronome::BaseModel
      Shape = T.type_alias { {group_key: String, group_values: T::Array[String], starting_at: Time} }

      sig { returns(String) }
      attr_accessor :group_key

      sig { returns(T::Array[String]) }
      attr_accessor :group_values

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_at

      sig { params(starting_at: Time).void }
      attr_writer :starting_at

      sig { params(group_key: String, group_values: T::Array[String], starting_at: Time).void }
      def initialize(group_key:, group_values:, starting_at: nil); end

      sig { returns(Metronome::Models::BaseUsageFilter::Shape) }
      def to_h; end
    end
  end
end
