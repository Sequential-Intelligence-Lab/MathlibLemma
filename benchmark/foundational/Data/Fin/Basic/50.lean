import Mathlib

lemma Fin.forall_univ_iff {n : ℕ} (p : Fin n → Prop) :
    (∀ i : Fin n, p i) ↔ (∀ k (hk : k < n), p ⟨k, hk⟩) := by
  sorry