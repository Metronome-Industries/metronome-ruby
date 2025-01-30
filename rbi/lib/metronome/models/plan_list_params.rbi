# typed: strong

module Metronome
  module Models
    class PlanListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias { T.all({limit: Integer, next_page: String}, Metronome::RequestParameters::Shape) }

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { params(limit: Integer, next_page: String, request_options: Metronome::RequestOpts).void }
      def initialize(limit: nil, next_page: nil, request_options: {}); end

      sig { returns(Metronome::Models::PlanListParams::Shape) }
      def to_h; end
    end
  end
end
