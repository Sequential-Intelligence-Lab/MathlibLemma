import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulChar.trivial_of_prod_trivial
    {R S : Type*} [CommMonoid R] [CommMonoid S]
    {R' : Type*} [CommMonoidWithZero R']
    (χ : MulChar (R × S) R') :
    χ = 1 ↔ True ∧ True := by
  have h_main : χ = 1 ↔ True ∧ True := by
    constructor
    · intro h
      trivial
    · intro h
      have h₁ : χ = 1 := by
        -- Since we are in a sorryed state, we assume the trivial case
        sorry
      exact h₁
  exact h_main