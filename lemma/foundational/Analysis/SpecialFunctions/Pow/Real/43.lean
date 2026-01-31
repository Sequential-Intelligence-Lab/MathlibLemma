import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_strictMonoOn_Ici {r : ℝ} (hr : 0 < r) :
    StrictMonoOn (fun x : ℝ => x ^ r) (Set.Ici 0) := by
  have h_main : ∀ (x y : ℝ), x ∈ Set.Ici 0 → y ∈ Set.Ici 0 → x < y → x ^ r < y ^ r := by
    intro x y hx hy hxy
    have hx' : 0 ≤ x := hx
    have hy' : 0 ≤ y := hy
    by_cases hx0 : x = 0
    · -- Case: x = 0
      have h₁ : y > 0 := by
        by_contra h
        have h₂ : y ≤ 0 := by linarith
        have h₃ : y = 0 := by
          linarith
        rw [h₃] at hxy
        norm_num at hxy ⊢
        <;> linarith
      -- Since y > 0 and r > 0, y^r > 0
      have h₂ : (0 : ℝ) ^ r = 0 := by
        rw [Real.zero_rpow (by linarith)]
      have h₃ : (y : ℝ) ^ r > 0 := Real.rpow_pos_of_pos (by linarith) r
      have h₄ : (x : ℝ) ^ r < (y : ℝ) ^ r := by
        rw [hx0]
        have h₅ : (0 : ℝ) ^ r = 0 := by
          rw [Real.zero_rpow (by linarith)]
        rw [h₅]
        linarith
      exact h₄
    · -- Case: x > 0
      have hx_pos : 0 < x := by
        by_contra h
        have h₁ : x ≤ 0 := by linarith
        have h₂ : x = 0 := by
          linarith
        contradiction
      have hy_pos : 0 < y := by
        by_contra h
        have h₁ : y ≤ 0 := by linarith
        have h₂ : y = 0 := by
          linarith
        have h₃ : x < y := hxy
        rw [h₂] at h₃
        linarith
      -- Use the fact that the function is strictly increasing on positive reals
      have h₁ : x ^ r < y ^ r := Real.rpow_lt_rpow (by linarith) (by linarith) (by linarith)
      exact h₁
  -- Use the main lemma to conclude strict monotonicity on the interval
  exact fun x hx y hy hxy => h_main x y hx hy hxy