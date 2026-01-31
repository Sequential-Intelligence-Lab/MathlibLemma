import Mathlib

open MeasureTheory

lemma upcrossingsBefore_eq_zero_of_never_above
    {Ω} {a b : ℝ} {f : ℕ → Ω → ℝ}
    {N : ℕ} {ω : Ω}
    (h : ∀ n ≤ N, f n ω ≤ a) :
    MeasureTheory.upcrossingsBefore a b f N ω = 0 := by
  sorry