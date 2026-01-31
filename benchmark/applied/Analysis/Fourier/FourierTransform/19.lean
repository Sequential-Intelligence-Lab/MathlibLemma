import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 20: Relation between fourierIntegral and scaling in variable
lemma Real.fourierIntegral_scaling
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  (f : ℝ → E) (a : ℝ) (ha : a ≠ 0) :
  Real.fourierIntegral (fun x => f (a * x)) =
    fun w => (1 / |a|) • Real.fourierIntegral f (w / a) := by
  sorry
