import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma log_prod_eq_sum_log {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ a ∈ s, 0 < f a) :
    Real.log (∏ a ∈ s, f a) = ∑ a ∈ s, Real.log (f a) := by
  have h_main : Real.log (∏ a ∈ s, f a) = ∑ a ∈ s, Real.log (f a) := by
    classical
    -- Use the induction principle for finite sets
    have h₁ : ∀ (s : Finset α), (∀ a ∈ s, 0 < f a) → Real.log (∏ a ∈ s, f a) = ∑ a ∈ s, Real.log (f a) := by
      intro s hf
      induction' s using Finset.induction_on with a s has ih
      · -- Base case: when s is empty
        simp
      · -- Inductive step: assume the statement holds for s, prove for s ∪ {a}
        have h₂ : 0 < f a := hf a (Finset.mem_insert_self a s)
        have h₃ : ∀ a ∈ s, 0 < f a := by
          intro a ha
          exact hf a (Finset.mem_insert_of_mem ha)
        have h₄ : 0 < ∏ x ∈ s, f x := by
          apply Finset.prod_pos
          intro x hx
          exact h₃ x hx
        have h₅ : Real.log (f a * ∏ x ∈ s, f x) = Real.log (f a) + Real.log (∏ x ∈ s, f x) := by
          have h₅₁ : 0 < f a := h₂
          have h₅₂ : 0 < ∏ x ∈ s, f x := h₄
          have h₅₃ : 0 < f a * ∏ x ∈ s, f x := by positivity
          -- Use the multiplicative property of logarithms
          rw [Real.log_mul (by positivity) (by positivity)]
        calc
          Real.log (∏ x ∈ insert a s, f x) = Real.log (f a * ∏ x ∈ s, f x) := by
            rw [Finset.prod_insert has]
            <;>
            simp_all [Finset.prod_insert]
          _ = Real.log (f a) + Real.log (∏ x ∈ s, f x) := by rw [h₅]
          _ = Real.log (f a) + ∑ x ∈ s, Real.log (f x) := by
            have h₆ : Real.log (∏ x ∈ s, f x) = ∑ x ∈ s, Real.log (f x) := ih h₃
            rw [h₆]
          _ = ∑ x ∈ insert a s, Real.log (f x) := by
            rw [Finset.sum_insert has]
            <;>
            simp_all [Finset.sum_insert]
    exact h₁ s hf
  exact h_main