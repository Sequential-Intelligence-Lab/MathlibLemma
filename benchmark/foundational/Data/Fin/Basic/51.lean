import Mathlib

lemma Fin.exists_univ_iff {n : ℕ} {p : Fin n → Prop} :
    (∃ i : Fin n, p i) ↔ (∃ hk : {k // k < n}, p ⟨hk.1, hk.2⟩) := by
  sorry