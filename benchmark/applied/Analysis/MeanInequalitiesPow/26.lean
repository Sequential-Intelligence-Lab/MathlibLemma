import Mathlib

open Finset

lemma Real.discrete_Jensen_strict
    {ι : Type _} {a b : ℝ} {s : Finset ι} {f : ℝ → ℝ}
    (hf : StrictConvexOn ℝ (Set.Icc a b) f)
    (w z : ι → ℝ) (hs : s.Nonempty)
    (hw : ∀ i, i ∈ s → 0 < w i) (hw' : ∑ i ∈ s, w i = (1 : ℝ))
    (hz : ∀ i, i ∈ s → z i ∈ Set.Icc a b)
    (hne : ∃ i, i ∈ s ∧ ∃ j, j ∈ s ∧ z i ≠ z j) :
    f (∑ i ∈ s, w i * z i) < ∑ i ∈ s, w i * f (z i) := by
  sorry