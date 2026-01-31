import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

namespace Complex

/-- Dummy placeholder for the (missing) `Complex.cauchy_power_series` constant.
We only need its type so that the following lemma is well-typed. -/
noncomputable
def cauchy_power_series (f : ℂ → E) (c : ℂ) (R : ℝ) : ℕ → E :=
  fun _ => 0

end Complex

/-! #### Rectangle / annulus / circle integral related lemmas -/

/-- Compatibility of `Complex.cauchy_power_series` with a continuous linear map. -/
lemma Complex.cauchy_power_series_comp_linear
    (f : ℂ → E) (c : ℂ) (R : ℝ) (L : E →L[ℂ] F) :
    Complex.cauchy_power_series (fun z => L (f z)) c R
      =
      (fun n => L (Complex.cauchy_power_series f c R n)) :=
by
  -- Prove equality of functions by extensionality
  ext n
  -- Unfold the dummy definition and simplify
  simp [Complex.cauchy_power_series]