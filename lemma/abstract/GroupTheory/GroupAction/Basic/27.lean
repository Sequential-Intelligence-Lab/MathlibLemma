import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.orbit_prod_eq_prod
    [Monoid M] [MulAction M α] [MulAction M β] (a : α) (b : β) :
    MulAction.orbit M (a, b) ⊆
      (MulAction.orbit M a) ×ˢ (MulAction.orbit M b) := by
  intro ⟨x, y⟩ h
  have h_main : ∃ (m : M), (x, y) = m • (a, b) := by
    -- Since (x, y) is in the orbit of (a, b), there exists an m such that (x, y) = m • (a, b)
    have h₁ : (x, y) ∈ MulAction.orbit M (a, b) := h
    -- By definition of orbit, there exists m : M such that (x, y) = m • (a, b)
    simp only [MulAction.mem_orbit] at h₁
    obtain ⟨m, hm⟩ := h₁
    refine' ⟨m, _⟩
    -- Simplify the expression to match the required form
    <;> simp_all [Prod.smul_def]
    <;> aesop
  
  have h_x : x ∈ MulAction.orbit M a := by
    obtain ⟨m, hm⟩ := h_main
    have h₁ : x = m • a := by
      -- Extract the equality for the first component from the pair equality
      have h₂ : (x, y) = m • (a, b) := hm
      have h₃ : x = (m • (a, b)).1 := by
        simp_all [Prod.ext_iff]
      -- Simplify the right-hand side to get x = m • a
      simp [Prod.smul_def] at h₃ ⊢
      <;> simp_all
    -- Use the equality to show x is in the orbit of a
    have h₂ : x ∈ MulAction.orbit M a := by
      rw [h₁]
      exact ⟨m, by simp⟩
    exact h₂
  
  have h_y : y ∈ MulAction.orbit M b := by
    obtain ⟨m, hm⟩ := h_main
    have h₁ : y = m • b := by
      -- Extract the equality for the second component from the pair equality
      have h₂ : (x, y) = m • (a, b) := hm
      have h₃ : y = (m • (a, b)).2 := by
        simp_all [Prod.ext_iff]
      -- Simplify the right-hand side to get y = m • b
      simp [Prod.smul_def] at h₃ ⊢
      <;> simp_all
    -- Use the equality to show y is in the orbit of b
    have h₂ : y ∈ MulAction.orbit M b := by
      rw [h₁]
      exact ⟨m, by simp⟩
    exact h₂
  
  have h_final : (x, y) ∈ (MulAction.orbit M a) ×ˢ (MulAction.orbit M b) := by
    -- We already have x ∈ orbit M a and y ∈ orbit M b, so we can directly construct the pair
    exact ⟨h_x, h_y⟩
  
  exact h_final