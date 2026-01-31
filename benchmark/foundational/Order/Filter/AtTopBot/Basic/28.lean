import Mathlib

lemma Filter.atBot_prod_atBot_eq {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] [IsDirected β (· ≥ ·)] :
    (Filter.atBot : Filter (α × β)) =
      Filter.comap Prod.fst Filter.atBot ⊓
      Filter.comap Prod.snd Filter.atBot := by
  sorry
