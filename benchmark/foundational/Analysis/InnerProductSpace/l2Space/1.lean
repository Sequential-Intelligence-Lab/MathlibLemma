import Mathlib

open scoped BigOperators

variable {ι : Type*} {G : ι → Type*}

/-- Inner product of an `lp` function with a single-support element, picking out the `i`-th coordinate. -/
theorem lp.inner_single_right_real
    [Fintype ι]
    [DecidableEq ι]
    [∀ i, NormedAddCommGroup (G i)]
    [∀ i, InnerProductSpace ℝ (G i)]
    (i : ι) (a : G i) (f : lp G 2) :
    @inner ℝ (lp G 2) _ f (lp.single 2 i a)
      = @inner ℝ (G i) _ (f i) a := by
  sorry