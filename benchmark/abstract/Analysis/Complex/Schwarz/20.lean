import Mathlib

/-- A map from `ℂ` to `ℂ` that is holomorphic and has constant derivative `1` on a connected
open set is of the form `z ↦ z + c`. -/
lemma eqOn_add_const_of_deriv_one
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U) (hUconn : IsConnected U)
    (hDiff : DifferentiableOn ℂ f U)
    (hderiv : ∀ z ∈ U, deriv f z = 1) :
    ∃ c : ℂ, Set.EqOn f (fun z => z + c) U := by
  sorry
