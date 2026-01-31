import Mathlib

/-- If the derivative of a holomorphic function vanishes at all but countably many points of an open
set, then the function is constant on each connected component. -/
lemma eqOn_const_of_deriv_zero_aesle
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U)
    (hDiff : DifferentiableOn ℂ f U)
    (hderiv_zero_ae :
      {z : ℂ | z ∈ U ∧ deriv f z ≠ 0}.Countable) :
    ∀ C : Set ℂ, IsPreconnected C → C ⊆ U →
      ∃ c : ℂ, Set.EqOn f (fun _ => c) C := by
  sorry