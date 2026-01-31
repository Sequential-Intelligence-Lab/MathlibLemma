import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fintype.card_subtype_eq_univ_filter {α : Type*} [Fintype α]
    (p : α → Prop) [DecidablePred p] :
    Fintype.card {x // p x} =
      (Finset.univ.filter fun x => p x).card := by
  have h_main : Fintype.card {x : α // p x} = (Finset.univ.filter p).card := by
    rw [Fintype.card_subtype]
    <;> simp [Finset.filter_eq']
    <;> rfl
  
  rw [h_main]
  <;> simp_all