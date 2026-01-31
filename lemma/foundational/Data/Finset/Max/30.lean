import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_union_eq_left_of_subset {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty) (hsub : t ⊆ s)
    (hmax : s.max' hs ∉ t) :
    (s ∪ t).max' (hs.mono (by
      intro x hx
      have : x ∈ s ∨ x ∈ t := Or.inl hx
      simpa [Finset.mem_union] using this)) = s.max' hs := by
  have h_mem_union : s.max' hs ∈ s ∪ t := by
    have h₁ : s.max' hs ∈ s := Finset.max'_mem s hs
    exact Finset.mem_union_left t h₁
  
  have h_upper_bound : ∀ (x : α), x ∈ s ∪ t → x ≤ s.max' hs := by
    intro x hx
    have h₂ : x ∈ s ∪ t := hx
    have h₃ : x ∈ s ∨ x ∈ t := by simpa [Finset.mem_union] using h₂
    cases h₃ with
    | inl h₃ =>
      -- Case: x ∈ s
      have h₄ : x ≤ s.max' hs := Finset.le_max' s x h₃
      exact h₄
    | inr h₃ =>
      -- Case: x ∈ t
      have h₄ : x ∈ s := hsub h₃
      have h₅ : x ≤ s.max' hs := Finset.le_max' s x h₄
      exact h₅
  
  have h_max'_union_le : (s ∪ t).max' (hs.mono (by
      intro x hx
      have : x ∈ s ∨ x ∈ t := Or.inl hx
      simpa [Finset.mem_union] using this)) ≤ s.max' hs := by
    have h₁ : (s ∪ t).max' (hs.mono (by
        intro x hx
        have : x ∈ s ∨ x ∈ t := Or.inl hx
        simpa [Finset.mem_union] using this)) ∈ s ∪ t :=
      Finset.max'_mem (s ∪ t) _
    have h₂ : (s ∪ t).max' (hs.mono (by
        intro x hx
        have : x ∈ s ∨ x ∈ t := Or.inl hx
        simpa [Finset.mem_union] using this)) ≤ s.max' hs :=
      h_upper_bound _ h₁
    exact h₂
  
  have h_max'_le_union : s.max' hs ≤ (s ∪ t).max' (hs.mono (by
      intro x hx
      have : x ∈ s ∨ x ∈ t := Or.inl hx
      simpa [Finset.mem_union] using this)) := by
    have h₁ : s.max' hs ∈ s ∪ t := h_mem_union
    have h₂ : s.max' hs ≤ (s ∪ t).max' (hs.mono (by
        intro x hx
        have : x ∈ s ∨ x ∈ t := Or.inl hx
        simpa [Finset.mem_union] using this)) :=
      Finset.le_max' (s ∪ t) (s.max' hs) h₁
    exact h₂
  
  have h_main : (s ∪ t).max' (hs.mono (by
      intro x hx
      have : x ∈ s ∨ x ∈ t := Or.inl hx
      simpa [Finset.mem_union] using this)) = s.max' hs := by
    apply le_antisymm
    · -- Prove (s ∪ t).max' ... ≤ s.max' hs
      exact h_max'_union_le
    · -- Prove s.max' hs ≤ (s ∪ t).max' ...
      exact h_max'_le_union
  
  apply h_main