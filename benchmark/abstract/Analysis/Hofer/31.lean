import Mathlib

/-- A uniformly continuous function between metric spaces is sequentially uniformly continuous:
for any `ε > 0`, there exists `N` such that if `n ≥ N` and `m ≥ N`, then the images of `u n`
and `u m` are within `ε`, for any sequence `u`. -/
lemma UniformContinuous.sequential_uniform {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    {f : X → Y} (hf : UniformContinuous f) :
    ∀ ε > 0, ∃ δ > 0, ∀ u : ℕ → X, ∀ m n,
      dist (u m) (u n) < δ → dist (f (u m)) (f (u n)) < ε := by
  sorry
