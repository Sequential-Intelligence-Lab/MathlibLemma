import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fintype.card_sigma' (α : Type*) (β : α → Type*)
    [Fintype α] [∀ a, Fintype (β a)] :
    Fintype.card (Sigma β) = Finset.univ.sum fun a : α => Fintype.card (β a) := by
  rw [Fintype.card_sigma]
  <;> simp_all [Fintype.card_sigma]
  <;> aesop