import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

/-- Continuity of `Real.fourierIntegralInv` under integrability conditions. -/
lemma Real.fourierIntegralInv_continuous
  (f : ℝ → ℂ) (hf : MeasureTheory.Integrable f MeasureTheory.volume) :
  Continuous (Real.fourierIntegralInv f) := by
  sorry