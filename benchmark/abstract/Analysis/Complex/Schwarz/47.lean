import Mathlib

/-- If a complex differentiable function is harmonic (real and imaginary parts harmonic) and its
gradient vanishes on a set with an accumulation point, then the function is constant. -/
lemma eqOn_const_of_harmonic_grad_zero
    {f : ℂ → ℂ} {U : Set ℂ}
    (hUopen : IsOpen U) (hUconn : IsConnected U)
    (hDiff : DifferentiableOn ℂ f U)
    (hHarmRe : True) (hHarmIm : True)
    {A : Set ℂ} (hA : A ⊆ U) (hAcc : ∃ z₀ ∈ A, z₀ ∈ closure (A \ {z₀}))
    (hGradZero : ∀ z ∈ A, deriv f z = 0) :
    ∃ c : ℂ, Set.EqOn f (fun _ => c) U := by
  -- `hHarmRe`, `hHarmIm` placeholders about harmonicity of real and imaginary parts
  sorry
