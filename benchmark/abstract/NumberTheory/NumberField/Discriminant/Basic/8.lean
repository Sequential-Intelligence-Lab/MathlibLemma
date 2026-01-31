import Mathlib

/-- If `L/K` is a finite extension of number fields, then the discriminant of `L` is divisible
by a power of the discriminant of `K`. (Dummy version with an abstract exponent `n`.) -/
lemma discr_dvd_discr_of_tower
    (K L : Type*) [Field K] [Field L]
    [Algebra ℚ K] [Algebra ℚ L] [Algebra K L]
    [IsScalarTower ℚ K L]
    [NumberField K] [NumberField L]
    [FiniteDimensional K L]
    (n : ℕ) :
    (NumberField.discr K) ^ n ∣ NumberField.discr L := by
  sorry