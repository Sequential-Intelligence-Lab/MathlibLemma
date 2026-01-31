import Mathlib

lemma dotProduct_restrict
    {m : Type _} {α : Type _}
    [Fintype m] [DecidableEq m]
    [NonUnitalNonAssocSemiring α]
    (s : Finset m) (v w : m → α) :
    (fun i => if i ∈ s then v i else (0 : α))
      = (fun i => if i ∈ s then w i else (0 : α)) := by
  sorry