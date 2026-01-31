import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.univ_filter_card {α : Type*} [Fintype α]
    (p : α → Prop) [DecidablePred p] :
    (Finset.univ.filter fun x : α => p x).card =
      Fintype.card {x // p x} := by
  have h_main : Fintype.card {x : α // p x} = (Finset.univ.filter (fun x : α => p x)).card := by
    apply Fintype.card_subtype
  
  have h_final : (Finset.univ.filter (fun x : α => p x)).card = Fintype.card {x : α // p x} := by
    rw [h_main]
    <;> simp [eq_comm]
  
  exact h_final