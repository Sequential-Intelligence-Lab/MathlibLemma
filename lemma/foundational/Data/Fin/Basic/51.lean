import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.exists_univ_iff {n : ℕ} {p : Fin n → Prop} :
    (∃ i : Fin n, p i) ↔ (∃ hk : {k // k < n}, p ⟨hk.1, hk.2⟩) := by
  constructor
  -- Forward direction: Assume there exists an i in Fin n such that p i holds.
  -- We need to show there exists an hk in {k // k < n} such that p ⟨hk.1, hk.2⟩ holds.
  intro h
  obtain ⟨i, hi⟩ := h
  exact ⟨⟨i, by simp [hi]⟩, by simp [hi]⟩
  -- Reverse direction: Assume there exists an hk in {k // k < n} such that p ⟨hk.1, hk.2⟩ holds.
  -- We need to show there exists an i in Fin n such that p i holds.
  intro h
  obtain ⟨hk, hk'⟩ := h
  exact ⟨⟨hk.1, by simp [hk.2]⟩, by simp [hk']⟩