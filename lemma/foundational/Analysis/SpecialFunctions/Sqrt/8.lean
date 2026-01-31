import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_uniformContinuousOn_Ici :
    UniformContinuousOn Real.sqrt (Set.Ici 0) := by
  have h_main : ∀ (x y : ℝ), 0 ≤ x → 0 ≤ y → (Real.sqrt x - Real.sqrt y) ^ 2 ≤ abs (x - y) := by
    intro x y hx hy
    have h₁ : 0 ≤ x := hx
    have h₂ : 0 ≤ y := hy
    have h₃ : (Real.sqrt x - Real.sqrt y) ^ 2 ≤ abs (x - y) := by
      cases' le_total x y with h h
      · -- Case: x ≤ y
        have h₄ : 0 ≤ y - x := by linarith
        have h₅ : (Real.sqrt y - Real.sqrt x) ^ 2 ≤ y - x := by
          have h₅₁ : 0 ≤ Real.sqrt y := Real.sqrt_nonneg y
          have h₅₂ : 0 ≤ Real.sqrt x := Real.sqrt_nonneg x
          have h₅₃ : 0 ≤ Real.sqrt y * Real.sqrt x := by positivity
          have h₅₄ : (Real.sqrt y - Real.sqrt x) ^ 2 = y + x - 2 * (Real.sqrt y * Real.sqrt x) := by
            nlinarith [Real.sq_sqrt (by linarith : 0 ≤ y), Real.sq_sqrt (by linarith : 0 ≤ x)]
          rw [h₅₄]
          have h₅₅ : y + x - 2 * (Real.sqrt y * Real.sqrt x) ≤ y - x := by
            have h₅₅₁ : Real.sqrt y * Real.sqrt x ≥ x := by
              have h₅₅₂ : Real.sqrt y * Real.sqrt x = Real.sqrt (y * x) := by
                rw [Real.sqrt_mul] <;> linarith
              have h₅₅₃ : Real.sqrt (y * x) ≥ x := by
                apply Real.le_sqrt_of_sq_le
                nlinarith [sq_nonneg (y - x), Real.sq_sqrt (by linarith : 0 ≤ y),
                  Real.sq_sqrt (by linarith : 0 ≤ x)]
              linarith
            nlinarith [Real.sq_sqrt (by linarith : 0 ≤ y), Real.sq_sqrt (by linarith : 0 ≤ x)]
          linarith
        have h₆ : (Real.sqrt x - Real.sqrt y) ^ 2 = (Real.sqrt y - Real.sqrt x) ^ 2 := by
          ring_nf
          <;>
          simp [sub_eq_add_neg, add_assoc]
          <;>
          ring_nf
          <;>
          linarith
        have h₇ : (Real.sqrt x - Real.sqrt y) ^ 2 ≤ y - x := by
          linarith
        have h₈ : abs (x - y) = y - x := by
          rw [abs_of_nonpos] <;> linarith
        have h₉ : (Real.sqrt x - Real.sqrt y) ^ 2 ≤ abs (x - y) := by
          linarith
        exact h₉
      · -- Case: y ≤ x
        have h₄ : 0 ≤ x - y := by linarith
        have h₅ : (Real.sqrt x - Real.sqrt y) ^ 2 ≤ x - y := by
          have h₅₁ : 0 ≤ Real.sqrt x := Real.sqrt_nonneg x
          have h₅₂ : 0 ≤ Real.sqrt y := Real.sqrt_nonneg y
          have h₅₃ : 0 ≤ Real.sqrt x * Real.sqrt y := by positivity
          have h₅₄ : (Real.sqrt x - Real.sqrt y) ^ 2 = x + y - 2 * (Real.sqrt x * Real.sqrt y) := by
            nlinarith [Real.sq_sqrt (by linarith : 0 ≤ x), Real.sq_sqrt (by linarith : 0 ≤ y)]
          rw [h₅₄]
          have h₅₅ : x + y - 2 * (Real.sqrt x * Real.sqrt y) ≤ x - y := by
            have h₅₅₁ : Real.sqrt x * Real.sqrt y ≥ y := by
              have h₅₅₂ : Real.sqrt x * Real.sqrt y = Real.sqrt (x * y) := by
                rw [Real.sqrt_mul] <;> linarith
              have h₅₅₃ : Real.sqrt (x * y) ≥ y := by
                apply Real.le_sqrt_of_sq_le
                nlinarith [sq_nonneg (x - y), Real.sq_sqrt (by linarith : 0 ≤ x),
                  Real.sq_sqrt (by linarith : 0 ≤ y)]
              linarith
            nlinarith [Real.sq_sqrt (by linarith : 0 ≤ x), Real.sq_sqrt (by linarith : 0 ≤ y)]
          linarith
        have h₆ : abs (x - y) = x - y := by
          rw [abs_of_nonneg] <;> linarith
        have h₇ : (Real.sqrt x - Real.sqrt y) ^ 2 ≤ abs (x - y) := by
          linarith
        exact h₇
    exact h₃
  
  have h_bound : ∀ (x y : ℝ), 0 ≤ x → 0 ≤ y → abs (Real.sqrt x - Real.sqrt y) ≤ Real.sqrt (abs (x - y)) := by
    intro x y hx hy
    have h₁ : 0 ≤ x := hx
    have h₂ : 0 ≤ y := hy
    have h₃ : (Real.sqrt x - Real.sqrt y) ^ 2 ≤ abs (x - y) := h_main x y h₁ h₂
    have h₄ : 0 ≤ Real.sqrt (abs (x - y)) := Real.sqrt_nonneg _
    have h₅ : 0 ≤ abs (Real.sqrt x - Real.sqrt y) := abs_nonneg _
    have h₆ : (abs (Real.sqrt x - Real.sqrt y)) ^ 2 ≤ (Real.sqrt (abs (x - y))) ^ 2 := by
      calc
        (abs (Real.sqrt x - Real.sqrt y)) ^ 2 = (Real.sqrt x - Real.sqrt y) ^ 2 := by
          rw [sq_abs]
          <;>
          nlinarith [Real.sqrt_nonneg x, Real.sqrt_nonneg y]
        _ ≤ abs (x - y) := h₃
        _ = (Real.sqrt (abs (x - y))) ^ 2 := by
          rw [Real.sq_sqrt (abs_nonneg (x - y))]
    have h₇ : abs (Real.sqrt x - Real.sqrt y) ≤ Real.sqrt (abs (x - y)) := by
      nlinarith [Real.sqrt_nonneg (abs (x - y)), Real.sq_sqrt (abs_nonneg (x - y))]
    exact h₇
  
  have h_unif_cont : UniformContinuousOn Real.sqrt (Set.Ici 0) := by
    refine' Metric.uniformContinuousOn_iff.mpr fun ε εpos => ⟨ε ^ 2, by positivity, _⟩
    intro x hx y hy hxy
    have hx' : 0 ≤ x := by exact hx
    have hy' : 0 ≤ y := by exact hy
    have h₁ : abs (Real.sqrt x - Real.sqrt y) ≤ Real.sqrt (abs (x - y)) := h_bound x y hx' hy'
    have h₂ : Real.sqrt (abs (x - y)) < ε := by
      have h₃ : abs (x - y) < ε ^ 2 := by
        -- Convert the distance condition to the required form
        have h₄ : dist x y < ε ^ 2 := by
          simpa [Real.dist_eq, abs_sub_lt_iff] using hxy
        simpa [Real.dist_eq, abs_sub_lt_iff] using h₄
      have h₄ : Real.sqrt (abs (x - y)) < ε := by
        apply Real.sqrt_lt' (by positivity) |>.mpr
        nlinarith [sq_nonneg ε]
      exact h₄
    calc
      dist (Real.sqrt x) (Real.sqrt y) = abs (Real.sqrt x - Real.sqrt y) := by
        simp [Real.dist_eq]
      _ ≤ Real.sqrt (abs (x - y)) := h₁
      _ < ε := h₂
  
  exact h_unif_cont