import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_congr_left [Fintype m] [NonUnitalNonAssocSemiring α]
    {v v' w : m → α}
    (hv : ∀ i, v i = v' i) :
    v ⬝ᵥ w = v' ⬝ᵥ w := by
  -- Simplify the dot product using the given equality hv
  simp_all [dotProduct]
  -- Use the fact that the dot product is a sum over the set m
  <;> simp_all [Finset.sum_congr]
  -- Since hv ensures v(i) = v'(i) for all i, the sums are equal
  <;> simp_all