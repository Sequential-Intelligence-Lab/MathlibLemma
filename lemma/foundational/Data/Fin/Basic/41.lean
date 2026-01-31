import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.exists_val_eq {n : ℕ} (k : ℕ) (hk : k < n) : ∃ i : Fin n, i.val = k := by
  have h_main : ∃ (i : Fin n), i.val = k := by
    refine' ⟨⟨k, hk⟩, _⟩
    <;> simp [Fin.val_mk]
    <;> aesop
  
  exact h_main