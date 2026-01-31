import Mathlib

open scoped BigOperators

lemma lp.single_support_subset {α : Type*} {E : α → Type*}
    [DecidableEq α] [∀ i, NormedAddCommGroup (E i)]
    {p : ENNReal} (i : α) (x : E i) :
    {j : α | lp.single p i x j ≠ 0} ⊆ {i} := by
  intro j hj
  -- Turn the target `j ∈ {i}` into `j = i`
  have hj' : lp.single p i x j ≠ 0 := hj
  classical
  have hji : j = i := by
    by_contra hne
    -- If j ≠ i, then the single is zero at j, contradicting hj'
    have : lp.single p i x j = 0 := by
      simp [hne]
    exact hj' this
  -- Now conclude membership in the singleton
  simpa [hji]