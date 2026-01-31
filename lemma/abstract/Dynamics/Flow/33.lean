import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.map_add_iterate {τ α}
    [TopologicalSpace τ] [AddCommMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (t : τ) (x : α) (n : ℕ) :
    (Nat.rec x (fun _ y => ϕ t y) n) = (fun m => ϕ (m • t) x) n := by
  -- We prove the equality by induction on n.
  induction' n with n ih
  · -- Base case n = 0
    -- Left: Nat.rec x _ 0 = x
    -- Right: ϕ (0 • t) x = ϕ 0 x = x
    simp [Nat.rec, zero_nsmul, Flow.map_zero]
  · -- Inductive step: assume the statement for n, prove for n.succ
    -- Nat.rec x _ (Nat.succ n) = ϕ t (Nat.rec x _ n)
    -- Use the induction hypothesis and the flow additivity,
    -- as well as (Nat.succ n) • t = n • t + t.
    simp [Nat.rec, ih, succ_nsmul, Flow.map_add, add_comm]