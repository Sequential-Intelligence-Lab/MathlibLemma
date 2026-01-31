import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f g : 𝕜 → 𝕜) (x : 𝕜) (hx : g x ≠ 0)
    (hf : DifferentiableAt 𝕜 f x) (hg : DifferentiableAt 𝕜 g x) :
    deriv (fun y => f y / g y) x =
      (deriv f x * g x - f x * deriv g x) / (g x)^2 := by
  have h₁ : HasDerivAt (fun y : 𝕜 => f y / g y) ((deriv f x * g x - f x * deriv g x) / (g x)^2) x := by
    have h₂ : HasDerivAt f (deriv f x) x := by
      apply DifferentiableAt.hasDerivAt
      exact hf
    have h₃ : HasDerivAt g (deriv g x) x := by
      apply DifferentiableAt.hasDerivAt
      exact hg
    have h₄ : HasDerivAt (fun y : 𝕜 => f y / g y) ((deriv f x * g x - f x * deriv g x) / (g x)^2) x := by
      have h₅ : HasDerivAt (fun y : 𝕜 => f y / g y) ((deriv f x * g x - f x * deriv g x) / (g x)^2) x := by
        convert HasDerivAt.div h₂ h₃ hx using 1
        <;> field_simp [hx, pow_two]
        <;> ring
        <;> simp_all [mul_comm]
        <;> field_simp [hx]
        <;> ring
      exact h₅
    exact h₄
  
  have h₂ : deriv (fun y : 𝕜 => f y / g y) x = (deriv f x * g x - f x * deriv g x) / (g x)^2 := by
    apply HasDerivAt.deriv
    exact h₁
  
  apply h₂