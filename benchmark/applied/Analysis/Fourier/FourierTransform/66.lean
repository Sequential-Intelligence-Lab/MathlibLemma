import Mathlib

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

-- 67: Fourier transform of integrable radial function on ℝ^n is radial
lemma Real.fourierIntegral_radial_is_radial
  {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
  [MeasurableSpace V] [BorelSpace V] [FiniteDimensional ℝ V]
  (f : V → ℂ)
  (h_radial : ∀ x y, ‖x‖ = ‖y‖ → f x = f y)
  (hf : MeasureTheory.Integrable f) :
  ∀ x y, ‖x‖ = ‖y‖ → Real.fourierIntegral f x = Real.fourierIntegral f y := by
  sorry

/-
The lemmas below are intentionally left with `sorry` proofs.
They are meant as potential additions to mathlib, suggested from
the perspective of how the Fourier-analytic API in the user's
file might naturally interact with other parts of the library.
-/

-- 67: Fourier transform of integrable radial function on ℝ^n is radial
lemma Real.fourierIntegral_radial_is_radial_real
  (f : ℝ → ℂ)
  (h_radial : ∀ x y, ‖x‖ = ‖y‖ → f x = f y)
  (hf : MeasureTheory.Integrable f) :
  ∀ x y, ‖x‖ = ‖y‖ → Real.fourierIntegral f x = Real.fourierIntegral f y := by
  sorry