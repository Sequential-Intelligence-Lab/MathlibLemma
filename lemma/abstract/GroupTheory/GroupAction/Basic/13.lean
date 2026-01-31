import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.stabilizer_nontrivial_iff [Group G] [MulAction G α] {a : α} :
    Nontrivial (MulAction.stabilizer G a) ↔
      ∃ g : G, g ≠ 1 ∧ g • a = a := by
  have h_forward : Nontrivial (MulAction.stabilizer G a) → (∃ g : G, g ≠ 1 ∧ g • a = a) := by
    intro h
    -- Obtain two distinct elements x and y in the stabilizer
    have h₁ : ∃ (x y : MulAction.stabilizer G a), x ≠ y := by
      obtain ⟨x, y, hxy⟩ := h
      exact ⟨x, y, hxy⟩
    obtain ⟨⟨x, hx⟩, ⟨y, hy⟩, hxy⟩ := h₁
    -- Case on whether x = 1
    by_cases hx1 : x = 1
    · -- If x = 1, then y ≠ 1
      have hy1 : y ≠ 1 := by
        intro hy1
        apply hxy
        simp_all [Subtype.ext_iff]
        <;> aesop
      refine' ⟨y, _⟩
      constructor
      · -- Prove y ≠ 1
        exact hy1
      · -- Prove y • a = a
        exact hy
    · -- If x ≠ 1, then x is the desired element
      refine' ⟨x, _⟩
      constructor
      · -- Prove x ≠ 1
        exact hx1
      · -- Prove x • a = a
        exact hx
  
  have h_backward : (∃ g : G, g ≠ 1 ∧ g • a = a) → Nontrivial (MulAction.stabilizer G a) := by
    intro h
    -- Obtain an element g ≠ 1 such that g • a = a
    obtain ⟨g, hg1, hg2⟩ := h
    -- Show that 1 and g are distinct elements in the stabilizer
    have h₁ : (1 : G) • a = a := by simp
    have h₂ : g • a = a := hg2
    -- Construct two distinct elements in the stabilizer
    have h₃ : Nontrivial (MulAction.stabilizer G a) := by
      -- Use 1 and g as distinct elements of the stabilizer
      refine' ⟨⟨1, by simp [h₁]⟩, ⟨g, hg2⟩, _⟩
      intro h₄
      -- If ⟨1, _⟩ = ⟨g, _⟩, then 1 = g in G
      have h₅ : (⟨(1 : G), by simp [h₁]⟩ : MulAction.stabilizer G a) = ⟨g, hg2⟩ := h₄
      have h₆ : (1 : G) = g := by
        -- Use the fact that the elements of the subtype are equal
        -- to deduce that their coercions are equal
        have h₇ : (1 : G) = g := by
          apply Subtype.ext_iff.mp h₅
        exact h₇
      -- But g ≠ 1, contradiction
      apply hg1
      rw [h₆]
    exact h₃
  
  constructor
  · -- Prove the forward direction
    exact h_forward
  · -- Prove the backward direction
    exact h_backward