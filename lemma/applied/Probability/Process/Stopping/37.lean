import Mathlib

-- 38. Stopped value respects addition.
lemma stoppedValue_add
  {Ω ι β : Type*} [Nonempty ι] [AddGroup β]
  (u v : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedValue (fun i ω => u i ω + v i ω) τ
    =
  fun ω => MeasureTheory.stoppedValue u τ ω
    + MeasureTheory.stoppedValue v τ ω := by
  -- `MeasureTheory.stoppedValue` is pointwise in `ω`, so we use function extensionality.
  funext ω
  -- There is a Mathlib lemma `MeasureTheory.stoppedValue_add` for pointwise addition.
  -- First, rewrite the process `(fun i ω => u i ω + v i ω)` as `(u + v)` pointwise.
  -- The pointwise addition instance for functions gives `(u + v) i ω = u i ω + v i ω`.
  have huv : (fun i ω => u i ω + v i ω) = fun i ω => (u i ω) + (v i ω) := rfl
  -- Now we can use the library lemma specialized at `ω`.
  -- The library lemma states equality of functions `ω ↦ ...`, so at each `ω` we can `simpa`.
  simpa [MeasureTheory.stoppedValue, huv]