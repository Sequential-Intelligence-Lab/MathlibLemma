import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 14: Fourier integral of a real-valued function equals the complexification of classical transform
lemma Real.fourierIntegral_eq_complexify_real_line
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  (f : ℝ → E) (w : ℝ) :
  Real.fourierIntegral f w =
    Fourier.fourierIntegral Real.fourierChar volume f w := by
  sorry
