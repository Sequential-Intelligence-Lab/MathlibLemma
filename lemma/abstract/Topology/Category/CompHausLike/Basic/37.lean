import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

@[simp] lemma CompHausLike.const_apply
    {P : TopCat.{u} → Prop}
    (T S : CompHausLike P) (s : S) (t : T) :
    (CompHausLike.const (P := P) T (S := S) s) t = s := by
  -- Simplify the expression using the definition of the constant function.
  simp [CompHausLike.const]
  -- The `simp` tactic will automatically apply the definition of `const` and reduce the expression to `s`.
  <;> simp_all
  -- If there are any remaining simplicial reductions, apply them to ensure the expression is fully simplified.
  <;> simp_all