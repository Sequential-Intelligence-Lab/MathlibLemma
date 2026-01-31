import Mathlib

lemma CFC.complex_exp_eq_normedSpace_exp'
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℂ A]
  [ContinuousFunctionalCalculus ℂ A (fun _ => True)]
  (a : A) (f : A → A)
  (hf : f = fun x : A => cfc Complex.exp x) :
  cfc Complex.exp a = f a := by
  -- We simply rewrite `f` using the given hypothesis `hf`.
  simpa [hf]