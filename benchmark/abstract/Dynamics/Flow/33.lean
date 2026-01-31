import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.map_add_iterate {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (t : τ) (x : α) (n : ℕ) :
    (Nat.rec x (fun _ y => ϕ t y) n) = (fun m => ϕ (m • t) x) n := by
  sorry
