import Mathlib

lemma CFC.complex_exp_eq_normedSpace_exp'
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℂ A]
  [ContinuousFunctionalCalculus ℂ A (fun _ => True)]
  (a : A) (f : A → A) :
  cfc Complex.exp a = f a := by
  sorry