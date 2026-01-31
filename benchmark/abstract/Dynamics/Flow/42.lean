import Mathlib

/-
Invariant and forward invariant sets
-/
def Flow.comp_equiv {τ α β}
    [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β]
    (ϕ : Flow τ α) (e : α ≃ₜ β) :
    Flow τ β := by
  classical
  exact sorry