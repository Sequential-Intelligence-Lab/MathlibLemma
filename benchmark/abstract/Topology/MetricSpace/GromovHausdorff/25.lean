import Mathlib

/-- The Kuratowski embedding of a compact metric space into `ℓ^∞(ℝ)` is injective. -/
lemma kuratowskiEmbedding_injective
    (X : Type*) [MetricSpace X] [CompactSpace X] :
    Function.Injective (kuratowskiEmbedding X) := by
  sorry
