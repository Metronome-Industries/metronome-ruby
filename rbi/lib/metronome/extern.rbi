# typed: strong

module Metronome
  module Extern
    sig { params(blk: T.proc.void).void }
    def sorbet!(&blk); end
  end
end
