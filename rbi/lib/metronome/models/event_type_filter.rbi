# typed: strong

module Metronome
  module Models
    class EventTypeFilter < Metronome::BaseModel
      Shape = T.type_alias { {in_values: T::Array[String], not_in_values: T::Array[String]} }

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :in_values

      sig { params(in_values: T::Array[String]).void }
      attr_writer :in_values

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :not_in_values

      sig { params(not_in_values: T::Array[String]).void }
      attr_writer :not_in_values

      sig { params(in_values: T::Array[String], not_in_values: T::Array[String]).void }
      def initialize(in_values: nil, not_in_values: nil); end

      sig { returns(Metronome::Models::EventTypeFilter::Shape) }
      def to_h; end
    end
  end
end
