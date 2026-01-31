import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 33: Commutation of fourierIntegralInv with reflection
lemma Real.fourierIntegralInv_reflect
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  (f : ℝ → E) :
  Real.fourierIntegralInv (fun x => f (-x)) =
    fun w => Real.fourierIntegralInv f (-w) := by
  sorry
