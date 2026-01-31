import Mathlib

section

variable {A : Type _}

variable [TopologicalSpace A]
variable [NonUnitalRing A]
variable [StarRing A]
variable [Module ℝ A]
variable [SMulCommClass ℝ A A]
variable [IsScalarTower ℝ A A]
variable [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
variable [PartialOrder A]
variable [StarOrderedRing A]
variable [NonnegSpectrumClass ℝ A]

lemma CFC.abs_map_involutive :
    Function.Involutive (CFC.abs : A → A) → False := by
  sorry

end