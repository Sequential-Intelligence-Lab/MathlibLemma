import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulChar.isClosedUnder_mul_inv
    {R : Type*} [CommMonoid R]
    {R' : Type*} [CommMonoidWithZero R'] :
    (∀ χ ψ : MulChar R R', ∃ ζ, ζ = χ * ψ) ∧
    (∀ χ : MulChar R R', ∃ ζ, ζ = χ⁻¹) := by
  have h_mul : ∀ χ ψ : MulChar R R', ∃ ζ, ζ = χ * ψ := by
    intro χ ψ
    refine' ⟨χ * ψ, _⟩
    <;> rfl
  
  have h_inv : ∀ χ : MulChar R R', ∃ ζ, ζ = χ⁻¹ := by
    intro χ
    refine' ⟨χ⁻¹, _⟩
    <;> rfl
  
  exact ⟨h_mul, h_inv⟩