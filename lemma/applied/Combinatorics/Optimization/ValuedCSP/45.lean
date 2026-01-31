import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Multiset.eq_of_subset_of_card_le
    {s t : Multiset α} (h₁ : s ≤ t) (h₂ : t.card ≤ s.card) : s = t := by
  have h₃ : s.card ≤ t.card := by
    apply Multiset.card_mono
    <;> assumption
  
  have h₄ : s.card = t.card := by
    have h₄₁ : s.card ≤ t.card := h₃
    have h₄₂ : t.card ≤ s.card := h₂
    apply le_antisymm
    · -- Prove s.card ≤ t.card
      exact h₄₁
    · -- Prove t.card ≤ s.card
      exact h₄₂
  
  have h₅ : s = t := by
    apply Multiset.eq_of_le_of_card_le h₁
    <;> simp_all [h₄]
    <;> omega
  
  exact h₅