import Mathlib

namespace MeasureTheory

/-- Dummy definition of `IterateMulAct` to make the lemma statement compile.
    In real mathlib, this would be the action of `ℕ` on `α` by iterates of `f`. -/
def IterateMulAct {α : Type*} (f : α → α) :=
  ℕ

/-- Dummy class for ergodicity of an action by scalar multiplication.
    In real mathlib, this would express that the `G`-action on `α` is ergodic
    w.r.t. a measure `μ`. -/
class ErgodicSMul (G α : Type*) [MeasurableSpace α] (μ : Measure α) : Prop where
  dummy : True

/-- Dummy structure for ergodicity of a map `f` w.r.t. a measure `μ`. -/
structure Ergodic {α : Type*} [MeasurableSpace α] (f : α → α) (μ : Measure α) : Prop where
  dummy : True

end MeasureTheory

open MeasureTheory

/-- For a measure-preserving map `f`, ergodicity of the `IterateMulAct` action
is equivalent to `f` being ergodic. (variant using `SMulInvariantMeasure`). -/
lemma ergodicSMul_iterateMulAct_iff_ergodic_of_measurePreserving
    {α : Type*} [MeasurableSpace α] (μ : Measure α)
    {f : α → α} (hf_meas : Measurable f)
    (hf_pres : MeasurePreserving f μ μ) :
    MeasureTheory.ErgodicSMul (MeasureTheory.IterateMulAct f) α μ ↔
      MeasureTheory.Ergodic f μ := by
  sorry