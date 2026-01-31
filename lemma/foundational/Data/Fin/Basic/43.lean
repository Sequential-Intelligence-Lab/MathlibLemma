import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.subsingleton_iff {n : ℕ} : Subsingleton (Fin n) ↔ n ≤ 1 := by
  have h_main : Subsingleton (Fin n) ↔ n ≤ 1 := by
    constructor
    · -- Prove the forward direction: Subsingleton (Fin n) → n ≤ 1
      intro h
      by_contra! hn
      -- Assume n ≥ 2 and derive a contradiction
      have h₁ : n ≥ 2 := by omega
      -- Construct two distinct elements in Fin n
      have h₂ : (⟨0, by
        -- Prove that 0 < n
        have h₃ : 0 < n := by omega
        omega⟩ : Fin n) ≠ (⟨1, by
        -- Prove that 1 < n
        have h₃ : 1 < n := by omega
        omega⟩ : Fin n) := by
        intro h₃
        -- If they were equal, their values would be equal
        simp [Fin.ext_iff] at h₃
        <;> omega
      -- Use the subsingleton property to show they must be equal
      have h₃ : (⟨0, by
        have h₄ : 0 < n := by omega
        omega⟩ : Fin n) = (⟨1, by
        have h₄ : 1 < n := by omega
        omega⟩ : Fin n) := by
        -- Since Fin n is a subsingleton, all elements are equal
        exact Subsingleton.elim _ _
      -- Derive a contradiction
      exact h₂ h₃
    · -- Prove the backward direction: n ≤ 1 → Subsingleton (Fin n)
      intro h
      -- Consider the cases n = 0 and n = 1
      have h₁ : n ≤ 1 := h
      have h₂ : n = 0 ∨ n = 1 := by
        omega
      cases h₂ with
      | inl h₂ =>
        -- Case n = 0
        subst h₂
        -- Fin 0 is empty, so it is trivially a subsingleton
        infer_instance
      | inr h₂ =>
        -- Case n = 1
        subst h₂
        -- Prove that Fin 1 is a subsingleton
        refine' ⟨fun a b => _⟩
        -- Any two elements in Fin 1 must have the same value
        have h₃ : a.val = 0 := by
          have h₄ : a.val < 1 := a.is_lt
          omega
        have h₄ : b.val = 0 := by
          have h₅ : b.val < 1 := b.is_lt
          omega
        -- Since their values are the same, the elements are equal
        simp_all [Fin.ext_iff]
  exact h_main