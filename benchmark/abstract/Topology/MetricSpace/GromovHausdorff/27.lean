import Mathlib

/-- The range of the Kuratowski embedding of a compact metric space is compact. -/
lemma kuratowskiEmbedding_isCompact_range
    (X : Type*) [MetricSpace X] [CompactSpace X] :
    IsCompact (Set.range (kuratowskiEmbedding X)) := by
  sorry
