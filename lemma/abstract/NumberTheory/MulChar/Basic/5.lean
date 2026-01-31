import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulChar.eq_one_of_eq_one_on_powers_generator
    {R : Type*} [CommGroup R] [IsCyclic R]
    {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar R R')
    (x : R)
    (hx : ∀ r : R, ∃ n : ℤ, r = x ^ n)
    (hpow : ∀ n : ℤ, χ (x ^ n) = 1) :
    χ = 1 := by
  have h_main : ∀ (r : R), χ r = 1 := by
    intro r
    have h₁ : ∃ (n : ℤ), r = x ^ n := hx r
    obtain ⟨n, rfl⟩ := h₁
    have h₂ : χ (x ^ n) = 1 := hpow n
    exact h₂
  
  have h_final : χ = 1 := by
    ext r
    rw [h_main r]
    <;> simp [MulChar.one_apply]
  
  exact h_final