import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_subset_of_forall_le {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty)
    (hle : ∀ x ∈ s, ∀ y ∈ t, y ≤ x) :
    t.max' ht ≤ s.min' hs := by
  have h_max_in_t : t.max' ht ∈ t := by
    apply Finset.max'_mem
    <;> assumption
  
  have h_max_le_all_s : ∀ x ∈ s, t.max' ht ≤ x := by
    intro x hx
    have h₁ : ∀ y ∈ t, y ≤ x := by
      intro y hy
      exact hle x hx y hy
    have h₂ : t.max' ht ≤ x := by
      have h₃ : t.max' ht ∈ t := h_max_in_t
      have h₄ : t.max' ht ≤ x := by
        have h₅ : ∀ y ∈ t, y ≤ x := h₁
        have h₆ : t.max' ht ≤ x := by
          apply le_trans (Finset.le_max' t (t.max' ht) h₃)
          -- Use the fact that the maximum element is less than or equal to any other element in the set
          have h₇ : t.max' ht ∈ t := h_max_in_t
          specialize h₁ (t.max' ht) h₇
          exact h₁
        exact h₆
      exact h₄
    exact h₂
  
  have h_min_in_s : s.min' hs ∈ s := by
    apply Finset.min'_mem
    <;> assumption
  
  have h_main : t.max' ht ≤ s.min' hs := by
    have h₁ : t.max' ht ≤ s.min' hs := by
      have h₂ : s.min' hs ∈ s := h_min_in_s
      have h₃ : t.max' ht ≤ s.min' hs := h_max_le_all_s (s.min' hs) h₂
      exact h₃
    exact h₁
  
  exact h_main