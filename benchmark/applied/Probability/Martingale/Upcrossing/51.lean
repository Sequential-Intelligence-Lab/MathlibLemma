import Mathlib

lemma upcrossingsBefore_comp_mul_pos
    {Ω} {a b c : ℝ} (hc : 0 < c)
    {f : ℕ → Ω → ℝ} {N : ℕ} {ω : Ω} :
    MeasureTheory.upcrossingsBefore (c * a) (c * b) (fun n ω => c * f n ω) N ω =
      MeasureTheory.upcrossingsBefore a b f N ω := by
  sorry