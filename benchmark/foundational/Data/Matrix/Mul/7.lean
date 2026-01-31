import Mathlib

lemma dotProduct_eq_zero_of_disjoint_support
    [Fintype m] [DecidableEq m]
    [NonUnitalNonAssocSemiring α] [DecidableEq α]
    (v w : m → α)
    (hdisj :
      (Finset.univ.filter (fun j => v j ≠ 0)) ∩
      (Finset.univ.filter (fun j => w j ≠ 0)) = ∅) :
    v ⬝ᵥ w = 0 := by
  sorry