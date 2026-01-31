import Mathlib

lemma Filter.atTop_sup_eq {α} [SemilatticeSup α] [IsDirected α (· ≤ ·)] :
    (Filter.atTop : Filter (α × α)) =
      Filter.comap (fun a : α × α => a.1 ⊔ a.2) (Filter.atTop : Filter α) := by
  sorry