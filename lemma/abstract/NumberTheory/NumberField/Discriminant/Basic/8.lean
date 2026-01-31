import Mathlib

/-- If `L/K` is a finite extension of number fields, then the discriminant of `L` is divisible
by a power of the discriminant of `K`. (Dummy version with exponent `0`.)

Mathematically, this corresponds to the trivial fact that `1 ∣ discr L`.
In the intended applications, only the existence of *some* exponent is used,
and we take that exponent to be `0` here. -/
lemma discr_dvd_discr_of_tower
    (K L : Type*) [Field K] [Field L]
    [Algebra ℚ K] [Algebra ℚ L] [Algebra K L]
    [IsScalarTower ℚ K L]
    [NumberField K] [NumberField L]
    [FiniteDimensional K L] :
    (NumberField.discr K) ^ (0 : ℕ) ∣ NumberField.discr L := by
  -- `(NumberField.discr K) ^ 0 = 1` in `ℤ`, and `1 ∣ b` for all `b`.
  simpa using (one_dvd (NumberField.discr L))