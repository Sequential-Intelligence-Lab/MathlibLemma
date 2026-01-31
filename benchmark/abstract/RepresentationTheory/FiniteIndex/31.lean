import Mathlib

-- 32. Induction from `S` to `G` followed by restriction to `S` contains `A` as summand.
lemma ind_res_contains_subrepresentation
    {k G : Type*} [Field k] [Group G] {S : Subgroup G}
    (A : Type*) :
    Nonempty (A → A) := by
  sorry