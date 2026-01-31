import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/--! ### Basic coercion / equality lemmas for `CompHausLike` -/
def CompHausLike.True_is_CompHaus :
    (CompHausLike (fun _ : TopCat => True)) ≃
    (CompHausLike (fun _ : TopCat => True)) := by
  -- Use the identity function as the equivalence
  refine' Equiv.symm (Equiv.refl _)
  -- Simplify the expression to confirm the equivalence
  <;> simp
  -- Use the trivial proof for the equivalence
  <;> exact ⟨fun x => x, fun x => x, rfl, rfl⟩