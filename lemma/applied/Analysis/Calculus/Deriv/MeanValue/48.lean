import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma derivWithin_eq_deriv_of_isOpen {f : ℝ → ℝ} {s : Set ℝ} {x : ℝ}
    (hs : IsOpen s) (hx : x ∈ s)
    (hfd : HasDerivWithinAt f (deriv f x) s x) :
    derivWithin f s x = deriv f x := by
  have h_nhds : s ∈ nhds x := by
    exact hs.mem_nhds hx
  
  have h_unique : UniqueDiffWithinAt ℝ s x := by
    apply uniqueDiffWithinAt_of_mem_nhds
    exact h_nhds
  
  have h_main : derivWithin f s x = deriv f x := by
    have h₁ : derivWithin f s x = deriv f x := by
      -- Use the fact that the derivative within the set is unique and the given derivative
      apply HasDerivWithinAt.derivWithin
      <;> simp_all [h_unique]
      <;>
      (try norm_num)
      <;>
      (try linarith)
      <;>
      (try assumption)
      <;>
      (try simp_all [h_unique])
    exact h₁
  
  exact h_main