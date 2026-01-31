import Mathlib

open scoped Classical

lemma upcrossingsBefore_bounded_by_oscillation
    {Ω} {a b : ℝ} {f : ℕ → Ω → ℝ}
    {N : ℕ} {ω : Ω} (hab : a < b) :
    (b - a) * MeasureTheory.upcrossingsBefore a b f N ω ≤
      (sSup {x : ℝ | ∃ n ≤ N, x = f n ω} -
       sInf {x : ℝ | ∃ n ≤ N, x = f n ω}) := by
  sorry