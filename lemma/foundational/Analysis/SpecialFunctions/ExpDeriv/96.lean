import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.exp_surjective_on_Icc (a b : ℝ) :
    Set.SurjOn Real.exp (Set.Icc a b) (Set.Icc (Real.exp a) (Real.exp b)) := by
  have h_main : Set.SurjOn Real.exp (Set.Icc a b) (Set.Icc (Real.exp a) (Real.exp b)) := by
    by_cases h : a ≤ b
    · -- Case: a ≤ b
      intro y hy
      have h₁ : Real.exp a ≤ y := hy.1
      have h₂ : y ≤ Real.exp b := hy.2
      have h₃ : ContinuousOn Real.exp (Set.Icc a b) := Real.continuous_exp.continuousOn
      have h₄ : ∃ x ∈ Set.Icc a b, Real.exp x = y := by
        -- Apply the Intermediate Value Theorem
        have h₅ : ∃ x ∈ Set.Icc a b, Real.exp x = y := by
          apply intermediate_value_Icc (by linarith) h₃
          constructor <;> simp_all [Real.exp_le_exp]
          <;> linarith
        exact h₅
      obtain ⟨x, hx, hx'⟩ := h₄
      exact ⟨x, hx, hx'⟩
    · -- Case: a > b
      have h₁ : b < a := by linarith
      have h₂ : Real.exp b < Real.exp a := Real.exp_lt_exp.mpr h₁
      have h₃ : Set.Icc (Real.exp a) (Real.exp b) = ∅ := by
        apply Set.eq_empty_of_forall_not_mem
        intro x hx
        have h₄ : Real.exp a ≤ x := hx.1
        have h₅ : x ≤ Real.exp b := hx.2
        linarith
      have h₄ : Set.SurjOn Real.exp (Set.Icc a b) (Set.Icc (Real.exp a) (Real.exp b)) := by
        rw [h₃]
        intro y hy
        exfalso
        exact Set.not_mem_empty y hy
      exact h₄
  exact h_main