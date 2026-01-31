import Mathlib

lemma Fintype.card_quotient_eq [Fintype α] (s : Setoid α)
    [DecidableRel (fun x y : α => x ≈ y)] :
    Fintype.card (Quotient s) ≤ Fintype.card α := by
  sorry
