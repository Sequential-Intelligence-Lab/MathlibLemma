import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_congr [Fintype m] [NonUnitalNonAssocSemiring α]
    {v v' w w' : m → α}
    (hv : ∀ i, v i = v' i) (hw : ∀ i, w i = w' i) :
    v ⬝ᵥ w = v' ⬝ᵥ w' := by
  -- Simplify the dot product using the given equalities for v, v', w, and w'
  simp_all [dotProduct]
  -- Use the fact that the dot product is a sum of products, and since v_i = v'_i and w_i = w'_i,
  -- the sum of the products will be equal.
  <;> simp_all [Finset.sum_congr]
  -- Since all terms in the sum are equal, the sums themselves are equal.
  <;> simp_all