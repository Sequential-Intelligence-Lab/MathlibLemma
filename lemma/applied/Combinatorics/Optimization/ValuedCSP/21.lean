import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

variable {α : Type*}

lemma zsmul_le_zsmul_iff_of_pos
    [HSMul ℤ α α] [LE α] {z : ℤ} (hz : 0 < z) {a b : α} :
    z • a ≤ z • b ↔ a ≤ b := by
  have h_imp : z • a ≤ z • b → a ≤ b := by
    sorry
  
  have h_conv : a ≤ b → z • a ≤ z • b := by
    sorry
  
  exact ⟨h_imp, h_conv⟩