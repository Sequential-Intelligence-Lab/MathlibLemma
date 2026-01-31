import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_sqrt_at_neg {x : ℝ} (hx : x < 0) :
    deriv Real.sqrt x = 0 := by
  have h₁ : ∀ᶠ (y : ℝ) in nhds x, Real.sqrt y = 0 := by
    have h₂ : ∀ᶠ (y : ℝ) in nhds x, y < 0 := by
      have h₃ : x < 0 := hx
      have h₄ : ∀ᶠ (y : ℝ) in nhds x, y < 0 := by
        -- Use the fact that the set of y < 0 is open and contains x
        have h₅ : x < 0 := hx
        have h₆ : ∀ᶠ (y : ℝ) in nhds x, y ∈ Set.Iio 0 := by
          apply IsOpen.mem_nhds isOpen_Iio
          exact h₅
        filter_upwards [h₆] with y hy
        simp only [Set.mem_Iio] at hy ⊢
        exact hy
      exact h₄
    -- Now we know that for y in a neighborhood of x, y < 0
    -- Therefore, Real.sqrt y = 0 in this neighborhood
    filter_upwards [h₂] with y hy
    have h₃ : y < 0 := hy
    have h₄ : Real.sqrt y = 0 := by
      rw [Real.sqrt_eq_zero_of_nonpos] <;> linarith
    exact h₄
  
  have h₂ : deriv Real.sqrt x = deriv (fun _ : ℝ => (0 : ℝ)) x := by
    have h₃ : Real.sqrt =ᶠ[nhds x] (fun _ : ℝ => (0 : ℝ)) := by
      filter_upwards [h₁] with y hy
      simp [hy]
    -- Use the fact that the functions are eventually equal to show their derivatives are equal
    apply Filter.EventuallyEq.deriv_eq h₃
  
  have h₃ : deriv (fun _ : ℝ => (0 : ℝ)) x = 0 := by
    simp [deriv_const]
  
  have h₄ : deriv Real.sqrt x = 0 := by
    rw [h₂]
    rw [h₃]
  
  exact h₄