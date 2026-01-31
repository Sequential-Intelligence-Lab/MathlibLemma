import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

/-- 18: Fourier transform of even function is even (skeleton).

We use `Integrable` with respect to the
Lebesgue measure on `ℝ` (the default `MeasureSpace` instance).
-/
lemma Real.fourierIntegral_even_function_even
  (f : ℝ → ℂ) (h_even : Even f)
  (hf : MeasureTheory.Integrable f) :
  Even (Real.fourierIntegral f) := by
  sorry