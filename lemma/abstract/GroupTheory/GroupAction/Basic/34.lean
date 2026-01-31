import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

/-- Fixed points of a `MulAction` on a subtype correspond to
those elements whose underlying value is fixed in the ambient type.

We do not provide any construction of a `MulAction` on the subtype,
nor any proof; this lemma is just a schematic statement assuming
all needed instances already exist.

⚠️ Note: In the generality stated here (with an arbitrary `MulAction M {x // p x}`),
this statement is not provable in Lean without an additional compatibility
assumption relating the action on the subtype to the action on the ambient
type `α`. Therefore this lemma is intended only as a schematic comment,
and no actual proof can be provided in full generality. -/
lemma MulAction.fixedPoints_subtype
    [Monoid M] [MulAction M α]
    (p : α → Prop) [DecidablePred p]
    [MulAction M {x // p x}] :
    MulAction.fixedPoints M {x // p x} =
      {a : {x // p x} | (a : α) ∈ MulAction.fixedPoints M α} := by
  -- This lemma is not provable in this generality without assuming that
  -- the `MulAction` on `{x // p x}` is the restriction of the one on `α`.
  -- Hence we cannot complete the proof here.
  admit