import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_disjoint_union {α} [LinearOrder α] [DecidableEq α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty) (hdis : Disjoint s t) :
    (s ∪ t).min'
      (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) =
      min (s.min' hs) (t.min' ht) := by
  have h_min_mem : (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) ∈ s ∨ (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) ∈ t := by
    have h : (s ∪ t).min' (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) ∈ s ∪ t := by
      apply Finset.min'_mem
    have h₁ : (s ∪ t).min' (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) ∈ s ∨ (s ∪ t).min' (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) ∈ t := by
      simpa [Finset.mem_union] using h
    exact h₁
  
  have h_case_s : (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) ∈ s → (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) = min (s.min' hs) (t.min' ht) := by
    intro h_in_s
    have h₁ : (s ∪ t).min' (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) = s.min' hs := by
      have h₂ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) ∈ s := h_in_s
      have h₃ : s.min' hs ∈ s := Finset.min'_mem s hs
      have h₄ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) ≤ s.min' hs := by
        have h₅ : s.min' hs ∈ s ∪ t := Finset.mem_union.mpr (Or.inl h₃)
        have h₆ : (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) ≤ s.min' hs := by
          apply Finset.min'_le
          <;> simp_all [Finset.mem_union]
          <;> tauto
        exact h₆
      have h₅ : s.min' hs ≤ (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) := by
        have h₆ : (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) ∈ s := h_in_s
        have h₇ : s.min' hs ≤ (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) := by
          apply Finset.min'_le
          <;> simp_all [Finset.mem_union]
          <;> tauto
        exact h₇
      have h₆ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) = s.min' hs := by
        apply le_antisymm
        · exact h₄
        · exact h₅
      exact h₆
    have h₂ : s.min' hs ≤ t.min' ht := by
      have h₃ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) ≤ t.min' ht := by
        have h₄ : t.min' ht ∈ t := Finset.min'_mem t ht
        have h₅ : t.min' ht ∈ s ∪ t := Finset.mem_union.mpr (Or.inr h₄)
        have h₆ : (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) ≤ t.min' ht := by
          apply Finset.min'_le
          <;> simp_all [Finset.mem_union]
          <;> tauto
        exact h₆
      have h₄ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) = s.min' hs := h₁
      rw [h₄] at h₃
      exact h₃
    have h₃ : min (s.min' hs) (t.min' ht) = s.min' hs := by
      apply min_eq_left
      exact h₂
    rw [h₁, h₃]
    <;> simp_all
  
  have h_case_t : (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) ∈ t → (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) = min (s.min' hs) (t.min' ht) := by
    intro h_in_t
    have h₁ : (s ∪ t).min' (by
        rcases hs with ⟨x, hx⟩
        refine ⟨x, ?_⟩
        exact Finset.mem_union.mpr (Or.inl hx)) = t.min' ht := by
      have h₂ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) ∈ t := h_in_t
      have h₃ : t.min' ht ∈ t := Finset.min'_mem t ht
      have h₄ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) ≤ t.min' ht := by
        have h₅ : t.min' ht ∈ s ∪ t := Finset.mem_union.mpr (Or.inr h₃)
        have h₆ : (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) ≤ t.min' ht := by
          apply Finset.min'_le
          <;> simp_all [Finset.mem_union]
          <;> tauto
        exact h₆
      have h₅ : t.min' ht ≤ (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) := by
        have h₆ : (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) ∈ t := h_in_t
        have h₇ : t.min' ht ≤ (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) := by
          apply Finset.min'_le
          <;> simp_all [Finset.mem_union]
          <;> tauto
        exact h₇
      have h₆ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) = t.min' ht := by
        apply le_antisymm
        · exact h₄
        · exact h₅
      exact h₆
    have h₂ : t.min' ht ≤ s.min' hs := by
      have h₃ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) ≤ s.min' hs := by
        have h₄ : s.min' hs ∈ s := Finset.min'_mem s hs
        have h₅ : s.min' hs ∈ s ∪ t := Finset.mem_union.mpr (Or.inl h₄)
        have h₆ : (s ∪ t).min' (by
            rcases hs with ⟨x, hx⟩
            refine ⟨x, ?_⟩
            exact Finset.mem_union.mpr (Or.inl hx)) ≤ s.min' hs := by
          apply Finset.min'_le
          <;> simp_all [Finset.mem_union]
          <;> tauto
        exact h₆
      have h₄ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) = t.min' ht := h₁
      rw [h₄] at h₃
      exact h₃
    have h₃ : min (s.min' hs) (t.min' ht) = t.min' ht := by
      apply min_eq_right
      exact h₂
    rw [h₁, h₃]
    <;> simp_all
  
  have h_main : (s ∪ t).min' (by
      rcases hs with ⟨x, hx⟩
      refine ⟨x, ?_⟩
      exact Finset.mem_union.mpr (Or.inl hx)) = min (s.min' hs) (t.min' ht) := by
    cases h_min_mem with
    | inl h =>
      have h₁ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) = min (s.min' hs) (t.min' ht) := by
        apply h_case_s
        exact h
      exact h₁
    | inr h =>
      have h₁ : (s ∪ t).min' (by
          rcases hs with ⟨x, hx⟩
          refine ⟨x, ?_⟩
          exact Finset.mem_union.mpr (Or.inl hx)) = min (s.min' hs) (t.min' ht) := by
        apply h_case_t
        exact h
      exact h₁
  
  apply h_main