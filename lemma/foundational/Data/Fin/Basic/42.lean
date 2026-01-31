import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.exists_eq_val {n : ℕ} (i : Fin n) : ∃ k : { k : ℕ // k < n }, i = ⟨k, k.property⟩ := by
  have h_main : ∃ (k : { k : ℕ // k < n }), i = ⟨k, k.property⟩ := by
    use ⟨i.val, i.is_lt⟩
    -- We need to show that i = ⟨⟨i.val, i.is_lt⟩, (⟨i.val, i.is_lt⟩).property⟩
    -- Since (⟨i.val, i.is_lt⟩).property is i.is_lt, this reduces to showing i = ⟨i.val, i.is_lt⟩
    <;> simp [Fin.ext_iff]
    <;> aesop
  
  exact h_main