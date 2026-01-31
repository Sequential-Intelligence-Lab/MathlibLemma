import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
variable {𝕜 F : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup F] [NormedSpace 𝕜 F]


/-- If a function `f` is locally constant, then it is differentiable everywhere and its
derivative is `0`. -/
lemma IsLocallyConstant.deriv {f : 𝕜 → F} (h : IsLocallyConstant f) :
    deriv f = 0 := by
  ext x
  have h_eq : f =ᶠ[𝓝 x] (fun _ ↦ f x) := h.eventually_eq x
  rw [h_eq.deriv_eq, deriv_const]
  simp

lemma deriv_eq_zero_of_locally_constant
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f : 𝕜 → 𝕜}
    (hconst : ∀ x, ∃ u ∈ nhds x, ∀ y ∈ u, f y = f x) :
    deriv f = fun _ => 0 := by
  have h_main : ∀ x : 𝕜, deriv f x = 0 := by
    intro x
    -- Step 1: Obtain a neighborhood `u` of `x` where `f` is constant
    have h₁ : ∃ u ∈ nhds x, ∀ y ∈ u, f y = f x := hconst x
    obtain ⟨u, hu, hu'⟩ := h₁
    -- Step 2: Show that `f` is eventually equal to the constant function `y ↦ f x` near `x`
    have h₂ : ∀ᶠ (y : 𝕜) in nhds x, f y = f x := by
      filter_upwards [hu] with y hy
      exact hu' y hy
    -- Step 3: The constant function `y ↦ f x` has derivative `0` at `x`
    have h₃ : HasDerivAt (fun y : 𝕜 => f x) 0 x := by
      simpa using hasDerivAt_const x (f x)
    -- Step 4: Deduce that `f` has derivative `0` at `x`
    have h₄ : HasDerivAt f 0 x := by
      have h₅ : HasDerivAt f 0 x := h₃.congr_of_eventuallyEq h₂
      exact h₅
    -- Step 5: Conclude that `deriv f x = 0`
    have h₅ : deriv f x = 0 := by
      apply HasDerivAt.deriv
      exact h₄
    exact h₅

  have h_final : deriv f = fun _ => 0 := by
    funext x
    rw [h_main x]
    <;> simp

  exact h_final
