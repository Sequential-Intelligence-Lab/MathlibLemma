import Mathlib

lemma Real.discrete_Jensen {f : ℝ → ℝ} (hf : ConvexOn ℝ (Set.Icc a b) f)
    (w z : ι → ℝ) (hs : s.Nonempty)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, z i ∈ Set.Icc a b) :
    f (∑ i ∈ s, w i * z i) ≤ ∑ i ∈ s, w i * f (z i) := by
  sorry
