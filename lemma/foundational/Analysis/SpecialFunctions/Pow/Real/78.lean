import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma Real.rpow_monotoneOn_Icc {r : ℝ} (hr : 0 ≤ r) :
    MonotoneOn (fun x : ℝ => x ^ r) (Set.Icc 0 1) := by
  intro x hx y hy hxy
  have h1 : 0 ≤ x := by
    have h2 : x ∈ Set.Icc (0 : ℝ) 1 := hx
    exact h2.1
  have h2 : x ≤ 1 := by
    have h3 : x ∈ Set.Icc (0 : ℝ) 1 := hx
    exact h3.2
  have h3 : 0 ≤ y := by
    have h4 : y ∈ Set.Icc (0 : ℝ) 1 := hy
    exact h4.1
  have h4 : y ≤ 1 := by
    have h5 : y ∈ Set.Icc (0 : ℝ) 1 := hy
    exact h5.2
  have h5 : x ≤ y := hxy
  have h6 : x ^ r ≤ y ^ r := by
    by_cases h7 : x > 0
    · -- x > 0
      have h8 : y ≥ x := by linarith
      have h9 : y > 0 := by nlinarith
      have h10 : x ^ r ≤ y ^ r := by
        apply Real.rpow_le_rpow
        all_goals nlinarith
      linarith
    · -- x ≤ 0
      have h7' : x = 0 := by linarith
      rw [h7']
      have h10 : (0 : ℝ) ^ r ≤ y ^ r := by
        by_cases h11 : r > 0
        · -- r > 0
          have h10 : (0 : ℝ) ^ r = 0 := by
            apply Real.zero_rpow
            linarith
          have h11 : (0 : ℝ) ^ r ≤ y ^ r := by
            rw [h10]
            have h12 : 0 ≤ y ^ r := by positivity
            linarith
          linarith
        · -- r ≤ 0
          have h13 : r = 0 := by linarith
          rw [h13]
          have h10 : (0 : ℝ) ^ (0 : ℝ) = 1 := by
            simp
          have h11 : y ^ (0 : ℝ) = 1 := by
            simp
          rw [h10, h11]
          all_goals linarith
      linarith
  simpa using h6