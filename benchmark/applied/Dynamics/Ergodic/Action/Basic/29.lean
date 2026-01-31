import Mathlib

open MeasureTheory

/-- If the action of a monoid is ergodic and extends to a group action that
is measure-preserving, then the group action is also ergodic. -/
lemma ergodicSMul_group_of_semigroup
    {S G α : Type*} [Monoid S] [Group G]
    [SMul S α] [SMul G α]
    [MeasurableSpace α] (μ : Measure α)
    [SMulInvariantMeasure G α μ]
    [ErgodicSMul S α μ]
    (h_ext : ∀ s : S, ∃ g : G, (fun x : α => s • x) = fun x : α => g • x) :
    ErgodicSMul G α μ := by
  sorry