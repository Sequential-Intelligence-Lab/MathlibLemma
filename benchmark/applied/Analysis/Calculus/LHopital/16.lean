import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter

lemma deriv.lhopital_zero_atBot_real
    {f g : ℝ → ℝ}
    (hdf : ∀ᶠ x in atBot, DifferentiableAt ℝ f x)
    (hdg : ∀ᶠ x in atBot, DifferentiableAt ℝ g x)
    (hg' : ∀ᶠ x in atBot, deriv f x ≠ 0)
    (hfbot : Tendsto f atBot (nhds 0))
    (hgbot : Tendsto g atBot (nhds 0))
    (hdiv0 : Tendsto (fun x => deriv f x / deriv g x) atBot (nhds 0)) :
    Tendsto (fun x => f x / g x) atBot (nhds 0) := by
  sorry