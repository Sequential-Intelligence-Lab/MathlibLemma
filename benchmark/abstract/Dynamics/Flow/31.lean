import Mathlib

/-
Invariant and forward invariant sets
-/
lemma Flow.map_nsmul {τ α}
    [AddMonoid τ] [TopologicalSpace τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    [SMul ℕ τ] [SMul τ τ] [SMul τ α]
    [IsScalarTower ℕ τ τ]
    (ϕ : Flow τ α) (n : ℕ) (t : τ) (x : α) :
    ϕ (n • t) x = (Nat.rec x (fun _ y => ϕ t y) n) := by
  sorry