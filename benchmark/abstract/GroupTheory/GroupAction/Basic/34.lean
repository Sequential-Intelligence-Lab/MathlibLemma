import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

/-- Fixed points of a `MulAction` on a subtype correspond to
those elements whose underlying value is fixed in the ambient type.

We do not provide any construction of a `MulAction` on the subtype,
nor any proof; this lemma is just a schematic statement assuming
all needed instances already exist. -/
lemma MulAction.fixedPoints_subtype
    [Monoid M] [MulAction M α]
    (p : α → Prop) [DecidablePred p]
    [MulAction M {x // p x}] :
    MulAction.fixedPoints M {x // p x} =
      {a : {x // p x} | (a : α) ∈ MulAction.fixedPoints M α} := by
  sorry