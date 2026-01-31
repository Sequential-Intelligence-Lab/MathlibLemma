import Mathlib

namespace CFC

variable {A : Type*}

/-- Just a toy exponential on a type with inverse.
    We do **not** prove anything about it. -/
def exp (a : A) : A := a

/-- Just a toy lemma about this exponential on a type with inverse.
    We do **not** prove it, we only give a compilable statement. -/
lemma exp_neg
  [Neg A] [Inv A] (a : A) :
  exp (-a) = (exp a)⁻¹ := by
  sorry

end CFC