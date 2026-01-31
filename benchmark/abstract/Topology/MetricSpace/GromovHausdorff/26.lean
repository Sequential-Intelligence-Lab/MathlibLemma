import Mathlib

/-- The Kuratowski embedding of a compact metric space has closed range in `ℓ^∞(ℝ)`. -/
lemma kuratowskiEmbedding_isClosed_range
    (X : Type*) [MetricSpace X] [CompactSpace X] :
    IsClosed (Set.range (kuratowskiEmbedding X)) := by
  sorry
