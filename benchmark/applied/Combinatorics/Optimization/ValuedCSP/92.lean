import Mathlib

lemma List.Perm.of_ofFn_perm {n : ℕ} {D : Type*} {x y : Fin n → D}
    (h : List.Perm (List.ofFn x) (List.ofFn y)) :
    List.Perm (List.ofFn x) (List.ofFn y) := by
  sorry