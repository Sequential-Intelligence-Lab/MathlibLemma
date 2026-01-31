import Mathlib

lemma dotProduct_ite_support
    [Fintype m] [DecidableEq m]
    [NonUnitalNonAssocSemiring α] [DecidableEq α]
    (v w : m → α) :
    (Finset.univ.sum fun i : m => v i * w i) =
      (Finset.univ.filter (fun i : m => v i ≠ 0 ∧ w i ≠ 0)).sum
        (fun i => v i * w i) := by
  sorry