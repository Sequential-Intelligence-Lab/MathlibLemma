import Mathlib

lemma LinearMap.trace_id_eq_rank_matrix
    {R : Type*} [Field R]
    {n : Type*} [Fintype n] [DecidableEq n] :
    LinearMap.trace R (n → R) (LinearMap.id) =
      (Fintype.card n : R) := by
  sorry
