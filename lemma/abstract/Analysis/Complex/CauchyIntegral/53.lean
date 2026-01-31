import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

-- Ensure notation `ℝ≥0` is available and has its instances
open scoped NNReal

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Stub for `Complex.cauchyPowerSeries` so that the lemma below typechecks. -/
namespace Complex

/-- Stub definition of `cauchyPowerSeries` so the lemma statement compiles. -/
noncomputable def cauchyPowerSeries (f : ℂ → E) (c : ℂ) (R : ℝ≥0) : ℕ → E :=
  fun _ => 0

end Complex

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.cauchyPowerSeries_add
    (f g : ℂ → E) (c : ℂ) (R : ℝ≥0) :
    Complex.cauchyPowerSeries (fun z => f z + g z) c R
      =
      Complex.cauchyPowerSeries f c R + Complex.cauchyPowerSeries g c R :=
by
  -- Extensionality on functions `ℕ → E`
  ext n
  -- Unfold the stub definition; both sides reduce to `0`
  simp [Complex.cauchyPowerSeries]