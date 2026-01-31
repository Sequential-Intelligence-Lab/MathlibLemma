import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 15: Symmetry of fourierIntegral under reflection of variable
lemma Real.fourierIntegral_reflect
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
  [MeasurableSpace V] [BorelSpace V] [FiniteDimensional ℝ V]
  (f : V → E) (w : V) :
  Real.fourierIntegral (fun v : V => f (-v)) w =
    Real.fourierIntegral f (-w) := by
  sorry
