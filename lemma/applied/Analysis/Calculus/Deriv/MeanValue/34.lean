import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_mul_eq_zero_of_localExtrema {f : ℝ → ℝ} {x : ℝ}
    (hmax : IsLocalMax f x ∨ IsLocalMin f x)
    (hfd : HasDerivAt f (deriv f x) x) :
    deriv f x = 0 := by
  have h_main : deriv f x = 0 := by
    cases hmax with
    | inl hmax =>
      -- Case: IsLocalMax f x
      have h₁ : deriv f x = 0 := by
        -- Use the fact that if f has a local max at x and is differentiable at x, then the derivative is zero
        have h₂ : deriv f x = 0 := by
          apply IsLocalMax.hasDerivAt_eq_zero hmax
          -- We need to show that f has a derivative at x, which is given by hfd
          <;> simpa using hfd
        exact h₂
      exact h₁
    | inr hmin =>
      -- Case: IsLocalMin f x
      have h₁ : deriv f x = 0 := by
        -- Use the fact that if f has a local min at x and is differentiable at x, then the derivative is zero
        have h₂ : deriv f x = 0 := by
          apply IsLocalMin.hasDerivAt_eq_zero hmin
          -- We need to show that f has a derivative at x, which is given by hfd
          <;> simpa using hfd
        exact h₂
      exact h₁
  
  exact h_main