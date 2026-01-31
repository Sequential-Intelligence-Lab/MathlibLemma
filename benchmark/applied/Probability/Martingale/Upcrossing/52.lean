import Mathlib

lemma upcrossingsBefore_comp_affine_pos
    {Ω} {a b α β : ℝ} (hα : 0 < α)
    {f : ℕ → Ω → ℝ} {N : ℕ} {ω : Ω} :
    MeasureTheory.upcrossingsBefore (α * a + β) (α * b + β)
        (fun n ω => α * f n ω + β) N ω =
      MeasureTheory.upcrossingsBefore a b f N ω := by
  sorry