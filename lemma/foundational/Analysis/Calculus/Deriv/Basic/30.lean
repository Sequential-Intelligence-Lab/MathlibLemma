import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivWithinAt.div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivWithinAt f f' s x)
    (hg : HasDerivWithinAt g g' s x)
    (hx : g x ≠ 0) :
    HasDerivWithinAt (fun y => f y / g y)
      ((f' * g x - f x * g') / (g x)^2) s x := by
  have h_inv : HasDerivWithinAt (fun y : 𝕜 => (g y)⁻¹) (-g' * (g x)⁻¹ ^ 2) s x := by
    have h1 : HasDerivWithinAt g g' s x := hg
    have h2 : g x ≠ 0 := hx
    -- Use the fact that the derivative of the inverse function can be computed using the chain rule
    convert HasDerivWithinAt.inv h1 h2 using 1
    <;> field_simp [h2, pow_two]
    <;> ring
    <;> simp_all [mul_comm]
    <;> field_simp [h2]
    <;> ring
  
  have h_mul : HasDerivWithinAt (fun y : 𝕜 => f y * (g y)⁻¹) (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) s x := by
    have h1 : HasDerivWithinAt f f' s x := hf
    have h2 : HasDerivWithinAt (fun y : 𝕜 => (g y)⁻¹) (-g' * (g x)⁻¹ ^ 2) s x := h_inv
    have h3 : HasDerivWithinAt (fun y : 𝕜 => f y * (g y)⁻¹) (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) s x := by
      convert h1.mul h2 using 1
      <;> simp [hx]
      <;> field_simp [hx]
      <;> ring
      <;> simp_all [mul_assoc]
      <;> field_simp [hx]
      <;> ring
    exact h3
  
  have h_main : (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) = (f' * g x - f x * g') / (g x) ^ 2 := by
    have h₁ : g x ≠ 0 := hx
    have h₂ : (g x)⁻¹ * g x = 1 := by
      field_simp [h₁]
    calc
      (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) = (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) := rfl
      _ = (f' * g x - f x * g') / (g x) ^ 2 := by
        have h₃ : (g x) ^ 2 = g x * g x := by ring
        calc
          (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) = f' * (g x)⁻¹ + f x * (-g') * (g x)⁻¹ ^ 2 := by ring
          _ = (f' * g x) / (g x) ^ 2 - (f x * g') / (g x) ^ 2 := by
            -- Simplify each term separately
            have h₄ : f' * (g x)⁻¹ = (f' * g x) / (g x) ^ 2 := by
              calc
                f' * (g x)⁻¹ = f' * (g x)⁻¹ * 1 := by ring
                _ = f' * (g x)⁻¹ * ((g x) * (g x)⁻¹) := by
                  field_simp [h₁]
                  <;> ring
                _ = (f' * (g x)⁻¹ * (g x)) * (g x)⁻¹ := by ring
                _ = (f' * ((g x)⁻¹ * g x)) * (g x)⁻¹ := by ring
                _ = (f' * 1) * (g x)⁻¹ := by
                  field_simp [h₁]
                  <;> ring
                _ = f' * (g x)⁻¹ := by ring
                _ = (f' * g x) / (g x) ^ 2 := by
                  field_simp [h₁, pow_two]
                  <;> ring
                  <;> field_simp [h₁]
                  <;> ring
            have h₅ : f x * (-g') * (g x)⁻¹ ^ 2 = -((f x * g') / (g x) ^ 2) := by
              calc
                f x * (-g') * (g x)⁻¹ ^ 2 = - (f x * g' * (g x)⁻¹ ^ 2) := by ring
                _ = -((f x * g') / (g x) ^ 2) := by
                  have h₆ : (g x)⁻¹ ^ 2 = (g x)⁻¹ * (g x)⁻¹ := by ring
                  calc
                    - (f x * g' * (g x)⁻¹ ^ 2) = - (f x * g' * ((g x)⁻¹ * (g x)⁻¹)) := by rw [h₆]
                    _ = - (f x * g' * (g x)⁻¹ * (g x)⁻¹) := by ring
                    _ = - ((f x * g') / (g x) * (g x)⁻¹) := by
                      field_simp [h₁]
                      <;> ring
                    _ = - ((f x * g') / (g x) ^ 2) := by
                      field_simp [h₁, pow_two]
                      <;> ring
                      <;> field_simp [h₁]
                      <;> ring
            calc
              f' * (g x)⁻¹ + f x * (-g') * (g x)⁻¹ ^ 2 = (f' * g x) / (g x) ^ 2 + -((f x * g') / (g x) ^ 2) := by
                rw [h₄, h₅]
              _ = (f' * g x) / (g x) ^ 2 - (f x * g') / (g x) ^ 2 := by ring
          _ = (f' * g x - f x * g') / (g x) ^ 2 := by
            -- Combine the fractions
            have h₇ : (f' * g x) / (g x) ^ 2 - (f x * g') / (g x) ^ 2 = (f' * g x - f x * g') / (g x) ^ 2 := by
              field_simp [h₁, pow_two]
              <;> ring
              <;> field_simp [h₁]
              <;> ring
            rw [h₇]
          _ = (f' * g x - f x * g') / (g x) ^ 2 := by rfl
  
  have h_final : HasDerivWithinAt (fun y => f y / g y) ((f' * g x - f x * g') / (g x)^2) s x := by
    have h₁ : (fun y : 𝕜 => f y / g y) = (fun y : 𝕜 => f y * (g y)⁻¹) := by
      funext y
      field_simp
    rw [h₁] at *
    have h₂ : HasDerivWithinAt (fun y : 𝕜 => f y * (g y)⁻¹) (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) s x := h_mul
    have h₃ : (f' * (g x)⁻¹ + f x * (-g' * (g x)⁻¹ ^ 2)) = (f' * g x - f x * g') / (g x) ^ 2 := h_main
    have h₄ : HasDerivWithinAt (fun y : 𝕜 => f y * (g y)⁻¹) ((f' * g x - f x * g') / (g x) ^ 2) s x := by
      convert h₂ using 1
      <;> rw [h₃]
    exact h₄
  
  exact h_final