import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_strictMono_on_Ici : StrictMonoOn Real.sqrt (Set.Ici (0 : ℝ)) := by
  have h_main : ∀ {a b : ℝ}, a ∈ Set.Ici (0 : ℝ) → b ∈ Set.Ici (0 : ℝ) → a < b → Real.sqrt a < Real.sqrt b := by
    intro a b ha hb hab
    have h₁ : 0 ≤ a := by exact ha
    have h₂ : 0 ≤ b := by exact hb
    by_contra h
    -- Assume for contradiction that sqrt(a) ≥ sqrt(b)
    have h₃ : Real.sqrt a ≥ Real.sqrt b := by
      -- Since we are assuming the negation of sqrt(a) < sqrt(b)
      push_neg at h
      linarith [Real.sqrt_nonneg a, Real.sqrt_nonneg b]
    -- Use the fact that the square function is increasing on [0, ∞)
    have h₄ : a ≥ b := by
      have h₄₁ : 0 ≤ Real.sqrt a := Real.sqrt_nonneg a
      have h₄₂ : 0 ≤ Real.sqrt b := Real.sqrt_nonneg b
      have h₄₃ : Real.sqrt a * Real.sqrt a ≥ Real.sqrt a * Real.sqrt b := by
        -- Since sqrt(a) ≥ sqrt(b) and sqrt(a) ≥ 0
        nlinarith [h₃, h₄₁]
      have h₄₄ : Real.sqrt a * Real.sqrt b ≥ Real.sqrt b * Real.sqrt b := by
        -- Since sqrt(a) ≥ sqrt(b) and sqrt(b) ≥ 0
        nlinarith [h₃, h₄₂]
      have h₄₅ : Real.sqrt a * Real.sqrt a = a := by
        -- (sqrt(a))² = a
        rw [Real.mul_self_sqrt] <;> linarith
      have h₄₆ : Real.sqrt b * Real.sqrt b = b := by
        -- (sqrt(b))² = b
        rw [Real.mul_self_sqrt] <;> linarith
      -- Combine the inequalities to get a ≥ b
      nlinarith [h₄₃, h₄₄, h₄₅, h₄₆]
    -- Contradiction with a < b
    linarith
  
  exact fun a ha b hb hab => h_main ha hb hab