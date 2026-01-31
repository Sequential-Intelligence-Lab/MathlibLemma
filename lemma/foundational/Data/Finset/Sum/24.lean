import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_nonempty_iff {α β} {s : Finset α} {t : Finset β} :
    (s.disjSum t).Nonempty ↔ s.Nonempty ∨ t.Nonempty := by
  have h_forward : (s.disjSum t).Nonempty → s.Nonempty ∨ t.Nonempty := by
    intro h
    by_cases hs : s.Nonempty
    · -- Case: s is nonempty
      exact Or.inl hs
    · -- Case: s is empty
      have h₁ : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
      have h₂ : t.Nonempty := by
        -- Since s is empty, if s.disjSum t is nonempty, then t must be nonempty
        by_contra ht
        have h₃ : t = ∅ := Finset.not_nonempty_iff_eq_empty.mp ht
        have h₄ : s.disjSum t = ∅ := by
          -- If both s and t are empty, then s.disjSum t is empty
          simp_all [h₁, h₃, Finset.disjSum]
          <;>
          aesop
        -- Contradiction since s.disjSum t is nonempty
        rw [h₄] at h
        simp_all [Finset.Nonempty]
      exact Or.inr h₂
  
  have h_backward : (s.Nonempty ∨ t.Nonempty) → (s.disjSum t).Nonempty := by
    intro h
    cases h with
    | inl h =>
      -- Case: s is nonempty
      have h₁ : s.Nonempty := h
      have h₂ : (s.disjSum t).Nonempty := by
        -- Since s is nonempty, we can find an element in s.disjSum t
        obtain ⟨a, ha⟩ := h₁
        have h₃ : (a : α) ∈ s := ha
        have h₄ : (a : α) ∈ s := ha
        -- Use the fact that s is nonempty to find an element in s.disjSum t
        have h₅ : (s.disjSum t).Nonempty := by
          -- Use the definition of disjSum to find an element
          classical
          have h₆ : ∃ (x : α ⊕ β), x ∈ s.disjSum t := by
            -- We can find an element in s.disjSum t because s is nonempty
            use Sum.inl a
            simp_all [Finset.disjSum]
            <;>
            aesop
          -- Since we have an element in s.disjSum t, it is nonempty
          obtain ⟨x, hx⟩ := h₆
          exact ⟨x, hx⟩
        exact h₅
      exact h₂
    | inr h =>
      -- Case: t is nonempty
      have h₁ : t.Nonempty := h
      have h₂ : (s.disjSum t).Nonempty := by
        -- Since t is nonempty, we can find an element in s.disjSum t
        obtain ⟨b, hb⟩ := h₁
        have h₃ : (b : β) ∈ t := hb
        have h₄ : (b : β) ∈ t := hb
        -- Use the fact that t is nonempty to find an element in s.disjSum t
        have h₅ : (s.disjSum t).Nonempty := by
          -- Use the definition of disjSum to find an element
          classical
          have h₆ : ∃ (x : α ⊕ β), x ∈ s.disjSum t := by
            -- We can find an element in s.disjSum t because t is nonempty
            use Sum.inr b
            simp_all [Finset.disjSum]
            <;>
            aesop
          -- Since we have an element in s.disjSum t, it is nonempty
          obtain ⟨x, hx⟩ := h₆
          exact ⟨x, hx⟩
        exact h₅
      exact h₂
  
  apply Iff.intro
  · -- Prove the forward direction: (s.disjSum t).Nonempty → s.Nonempty ∨ t.Nonempty
    intro h
    exact h_forward h
  · -- Prove the backward direction: s.Nonempty ∨ t.Nonempty → (s.disjSum t).Nonempty
    intro h
    exact h_backward h