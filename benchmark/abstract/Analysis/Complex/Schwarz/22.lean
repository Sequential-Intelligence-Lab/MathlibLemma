import Mathlib

/-- If a holomorphic map on a convex open set has zero derivative everywhere, then it is constant. -/
lemma eqOn_const_of_deriv_eq_zero
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U) (hUconn : IsConnected U)
    (hDiff : DifferentiableOn ℂ f U)
    (hderiv : ∀ z ∈ U, deriv f z = 0) :
    ∃ c : ℂ, Set.EqOn f (fun _ => c) U := by
  sorry
