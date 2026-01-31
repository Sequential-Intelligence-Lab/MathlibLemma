import Mathlib

/-- A map from `ℂ` to `ℂ` that is holomorphic and has constant derivative `a ≠ 0` on a connected
open set is of the form `z ↦ a * z + b`. -/
lemma eqOn_affine_of_deriv_const_ne_zero
    {f : ℂ → ℂ} {U : Set ℂ} {a : ℂ}
    (ha : a ≠ 0)
    (hUopen : IsOpen U) (hUconn : IsConnected U)
    (hDiff : DifferentiableOn ℂ f U)
    (hderiv : ∀ z ∈ U, deriv f z = a) :
    ∃ b : ℂ, Set.EqOn f (fun z => a * z + b) U := by
  sorry
