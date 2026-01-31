import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_strictMonoOn_Ioi :
    StrictMonoOn Real.sqrt (Set.Ioi 0) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Ioi 0 → y ∈ Set.Ioi 0 → x < y → Real.sqrt x < Real.sqrt y := by
    intro x y hx hy hxy
    have h₁ : 0 < x := by exact hx
    have h₂ : 0 < y := by exact hy
    have h₃ : 0 < Real.sqrt x := Real.sqrt_pos.mpr h₁
    have h₄ : 0 < Real.sqrt y := Real.sqrt_pos.mpr h₂
    have h₅ : 0 < Real.sqrt x + Real.sqrt y := by linarith
    have h₆ : (Real.sqrt y - Real.sqrt x) * (Real.sqrt y + Real.sqrt x) = y - x := by
      have h₆₁ : (Real.sqrt y - Real.sqrt x) * (Real.sqrt y + Real.sqrt x) = (Real.sqrt y) ^ 2 - (Real.sqrt x) ^ 2 := by
        ring
      rw [h₆₁]
      have h₆₂ : (Real.sqrt y) ^ 2 = y := by
        rw [Real.sq_sqrt (le_of_lt h₂)]
      have h₆₃ : (Real.sqrt x) ^ 2 = x := by
        rw [Real.sq_sqrt (le_of_lt h₁)]
      rw [h₆₂, h₆₃]
      <;> ring
    have h₇ : y - x > 0 := by linarith
    have h₈ : (Real.sqrt y - Real.sqrt x) * (Real.sqrt y + Real.sqrt x) > 0 := by
      linarith
    have h₉ : Real.sqrt y - Real.sqrt x > 0 := by
      by_contra h
      -- If sqrt(y) - sqrt(x) ≤ 0, then (sqrt(y) - sqrt(x)) * (sqrt(y) + sqrt(x)) ≤ 0
      have h₉₁ : Real.sqrt y - Real.sqrt x ≤ 0 := by linarith
      have h₉₂ : (Real.sqrt y - Real.sqrt x) * (Real.sqrt y + Real.sqrt x) ≤ 0 := by
        nlinarith [h₄, h₃]
      linarith
    linarith
  
  exact fun x hx y hy hxy => h_main x y hx hy hxy