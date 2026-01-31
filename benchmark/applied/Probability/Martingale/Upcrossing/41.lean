import Mathlib

-- Lemmas about upcrossingsBefore

lemma upcrossingsBefore_monotone_in_N
    {Ω : Type _} {a b : ℝ} {f : ℕ → Ω → ℝ}
    (hab : a < b) :
    Monotone (fun N => MeasureTheory.upcrossingsBefore a b f N) := by
  sorry