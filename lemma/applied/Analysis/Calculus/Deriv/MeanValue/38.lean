import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma hasDerivAt_eq_zero_of_const_on_open {f : ℝ → ℝ} {s : Set ℝ} {x : ℝ}
    (hs : IsOpen s) (hx : x ∈ s) (hconst : ∀ y ∈ s, f y = f x) :
    HasDerivAt f 0 x := by
  have h_const_deriv : HasDerivAt (fun _ : ℝ => f x) 0 x := by
    apply hasDerivAt_const
    <;>
    simp_all
  
  have h_eventually_eq : f =ᶠ[𝓝 x] (fun _ : ℝ => f x) := by
    have h₁ : s ∈ 𝓝 x := hs.mem_nhds hx
    have h₂ : ∀ᶠ (y : ℝ) in 𝓝 x, y ∈ s := h₁
    have h₃ : ∀ᶠ (y : ℝ) in 𝓝 x, f y = f x := by
      filter_upwards [h₂] with y hy
      apply hconst y hy
    -- We have shown that for all y in a neighborhood of x, f(y) = f(x).
    -- Now, we need to show that f is eventually equal to the constant function (fun _ => f x).
    have h₄ : ∀ᶠ (y : ℝ) in 𝓝 x, f y = (fun _ : ℝ => f x) y := by
      filter_upwards [h₃] with y hy
      simp_all
    -- Since f(y) = (fun _ => f x) y for all y in a neighborhood of x,
    -- we can conclude that f is eventually equal to (fun _ => f x).
    exact h₄
  
  have h_main : HasDerivAt f 0 x := by
    -- Use the fact that f is eventually equal to a constant function to conclude the derivative is zero.
    have h₂ : HasDerivAt f 0 x := h_const_deriv.congr_of_eventuallyEq h_eventually_eq
    exact h₂
  
  exact h_main