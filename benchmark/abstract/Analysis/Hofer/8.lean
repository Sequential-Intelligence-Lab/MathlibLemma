import Mathlib

/-- A function on a compact metric space which sends Cauchy sequences to Cauchy sequences
is uniformly continuous. -/
lemma uniformContinuous_of_cauchySeq {X Y : Type*} [MetricSpace X] [CompactSpace X]
    [MetricSpace Y] {f : X → Y}
    (hC : ∀ u : ℕ → X, CauchySeq u → CauchySeq (fun n => f (u n))) :
    UniformContinuous f := by
  sorry
