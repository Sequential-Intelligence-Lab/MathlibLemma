import Mathlib


/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/
-- 21: Real inner-product Fourier invariance under orthogonal transformation
lemma Real.fourierIntegral_comp_isometry
  {V W : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
  [NormedAddCommGroup W] [InnerProductSpace ℝ W]
  [FiniteDimensional ℝ V] [FiniteDimensional ℝ W]
  [MeasurableSpace V] [BorelSpace V]
  [MeasurableSpace W] [BorelSpace W]
  (A : V ≃ₗᵢ[ℝ] W)
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  (f : W → E) :
  Real.fourierIntegral (fun x : V => f (A x)) =
    fun w => Real.fourierIntegral f (A w) := by
  sorry
