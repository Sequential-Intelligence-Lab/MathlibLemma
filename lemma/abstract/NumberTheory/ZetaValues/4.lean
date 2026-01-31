import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma bernoulliFun_hasDerivAt_real (k : ℕ) (x : ℝ) :
    HasDerivAt (bernoulliFun k) ((k : ℝ) * bernoulliFun (k - 1) x) x := by
  have h₁ : HasDerivAt (bernoulliFun k) ((k : ℝ) * bernoulliFun (k - 1) x) x := by sorry
  exact h₁