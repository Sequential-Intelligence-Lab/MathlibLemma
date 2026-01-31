import Mathlib
import Aesop
set_option maxHeartbeats 0
open Real Nat Topology Rat


open scoped BigOperators

-- 35. A lemma about tail estimate in a discrete probability distribution (Bernstein-like)
lemma bernstein_tail_estimate
    (n : ℕ) (x : unitInterval) (δ : ℝ) (hδ : 0 < δ) :
    (∑ k : Fin (n + 1),
        bernstein n k x *
          (if dist ((k : ℝ) / (n : ℝ)) (x : ℝ) ≥ δ then (1 : ℝ) else 0)) ≤
      (4 * (n : ℝ) * δ ^ 2)⁻¹ := by
  sorry