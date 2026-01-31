import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Filter
open scoped Topology

lemma deriv.lhopital_zero_atTop_real
    {f g : ℝ → ℝ}
    (hdf : ∀ᶠ x in atTop, DifferentiableAt ℝ f x)
    (hdg : ∀ᶠ x in atTop, DifferentiableAt ℝ g x)
    (hg' : ∀ᶠ x in atTop, deriv g x ≠ 0)
    (hftop : Tendsto f atTop (𝓝 0))
    (hgtop : Tendsto g atTop (𝓝 0))
    (hdiv0 : Tendsto (fun x => deriv f x / deriv g x) atTop (𝓝 0)) :
    Tendsto (fun x => f x / g x) atTop (𝓝 0) := by
  sorry