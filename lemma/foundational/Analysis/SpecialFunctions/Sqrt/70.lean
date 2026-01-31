import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_hasDerivWithinAt_Ioi {x : ℝ} (hx : 0 < x) :
    HasDerivWithinAt Real.sqrt (1 / (2 * √x)) (Set.Ioi 0) x := by
  have h_deriv_at : HasDerivAt Real.sqrt (1 / (2 * Real.sqrt x)) x := by
    -- Use the known derivative of the square root function at x > 0
    have h : HasDerivAt Real.sqrt (1 / (2 * Real.sqrt x)) x := by
      apply Real.hasDerivAt_sqrt
      <;> linarith
    exact h
  
  have h_main : HasDerivWithinAt Real.sqrt (1 / (2 * √x)) (Set.Ioi 0) x := by
    -- Use the fact that the derivative at a point implies the derivative within any set containing the point
    have h₁ : x ∈ Set.Ioi (0 : ℝ) := by
      exact hx
    -- Use the fact that HasDerivAt implies HasDerivWithinAt for any set containing the point
    have h₂ : HasDerivWithinAt Real.sqrt (1 / (2 * Real.sqrt x)) (Set.Ioi 0) x := by
      apply h_deriv_at.hasDerivWithinAt
    -- Simplify the expression to match the required form
    convert h₂ using 1 <;>
    (try simp_all [Real.sqrt_eq_iff_sq_eq]) <;>
    (try field_simp) <;>
    (try ring_nf) <;>
    (try norm_num) <;>
    (try linarith)
    <;>
    simp_all [Real.sqrt_eq_iff_sq_eq]
    <;>
    field_simp
    <;>
    ring_nf
    <;>
    norm_num
    <;>
    linarith
  
  exact h_main