import Mathlib

-- 43. Uniform convergence of Bernstein approximation implies density of polynomials
lemma polynomials_dense_in_continuous
    (E := ℝ) :
    let I : Type := Set.Icc (0 : ℝ) 1
    DenseRange
      (fun p : Polynomial ℝ =>
        (p.toContinuousMapOn (Set.Icc (0 : ℝ) 1) : C(I, ℝ))) := by
  intro I
  sorry