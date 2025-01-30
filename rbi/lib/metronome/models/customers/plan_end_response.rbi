# typed: strong

module Metronome
  module Models
    module Customers
      class PlanEndResponse < Metronome::BaseModel
        Shape = T.type_alias { {} }

        sig { void }
        def initialize; end

        sig { returns(Metronome::Models::Customers::PlanEndResponse::Shape) }
        def to_h; end
      end
    end
  end
end
