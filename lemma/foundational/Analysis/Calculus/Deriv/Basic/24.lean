import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.inv'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f : 𝕜 → 𝕜} {f' : 𝕜}
    (hf : HasDerivAt f f' x) (hx : f x ≠ 0) :
    HasDerivAt (fun y => (f y)⁻¹) (- f' / (f x)^2) x := by
  have h_inv_deriv : HasDerivAt (fun y : 𝕜 => y⁻¹) (-1 / (f x)^2) (f x) := by
    convert hasDerivAt_inv (by simpa using hx) using 1
    <;> field_simp [hx, pow_two, mul_comm]
    <;> ring
    <;> simp_all [hx]
    <;> field_simp [hx, pow_two, mul_comm]
    <;> ring
  
  have h_comp_deriv : HasDerivAt (fun y => (f y)⁻¹) (-1 / (f x)^2 * f') x := by
    have h₁ : HasDerivAt (fun y : 𝕜 => (f y)⁻¹) (-1 / (f x)^2 * f') x := by
      -- Apply the chain rule to the composition of the inversion map and f
      have h₂ : HasDerivAt f f' x := hf
      have h₃ : HasDerivAt (fun y : 𝕜 => y⁻¹) (-1 / (f x)^2) (f x) := h_inv_deriv
      -- Use the chain rule to get the derivative of the composition
      have h₄ : HasDerivAt (fun y : 𝕜 => (f y)⁻¹) (-1 / (f x)^2 * f') x := HasDerivAt.comp x h₃ h₂
      exact h₄
    exact h₁
  
  have h_final : HasDerivAt (fun y => (f y)⁻¹) (- f' / (f x)^2) x := by
    have h₁ : (-1 / (f x)^2 * f' : 𝕜) = (- f' / (f x)^2 : 𝕜) := by
      ring_nf
      <;> field_simp [hx, pow_two, mul_comm]
      <;> ring_nf
      <;> simp_all [hx]
      <;> field_simp [hx, pow_two, mul_comm]
      <;> ring_nf
    rw [h₁] at h_comp_deriv
    exact h_comp_deriv
  
  exact h_final