import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma Fin.forall_univ_iff {n : ℕ} (p : Fin n → Prop) :
    (∀ i : Fin n, p i) ↔ (∀ k (hk : k < n), p ⟨k, hk⟩) := by
  constructor
  · -- Forward direction: if ∀ i : Fin n, p i, then ∀ k (hk : k < n), p ⟨k, hk⟩
    intro h k hk
    exact h ⟨k, hk⟩
  · -- Backward direction: if ∀ k (hk : k < n), p ⟨k, hk⟩, then ∀ i : Fin n, p i
    intro h i
    have h1 : i.val < n := i.isLt
    have h2 : p ⟨i.val, h1⟩ := h (i.val) h1
    have h3 : i = ⟨i.val, h1⟩ := by
      simp [Fin.ext_iff]
    rw [h3]
    exact h2