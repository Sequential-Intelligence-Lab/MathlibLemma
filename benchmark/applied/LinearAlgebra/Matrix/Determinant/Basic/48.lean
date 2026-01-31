import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

open Polynomial Matrix

-- Declare a stub for the companion matrix to make the lemma statement compilable.
-- In a real development, this would already exist in mathlib with this type.
noncomputable
def Polynomial.companionMatrix {R} [CommRing R] (f : R[X]) : Matrix (Fin f.natDegree) (Fin f.natDegree) R :=
  sorry

-- 49. Determinant of polynomial companion matrix equals ± constant term
lemma Matrix.det_companion_pow
    {R} [CommRing R]
    (f : R[X]) (k : ℕ) :
    (Polynomial.companionMatrix f ^ k).det =
      ((Polynomial.companionMatrix f).det) ^ k := by
  sorry