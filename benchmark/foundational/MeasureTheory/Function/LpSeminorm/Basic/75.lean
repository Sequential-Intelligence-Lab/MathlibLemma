import Mathlib

universe u v

open scoped ENNReal
open MeasureTheory

lemma MemLp.min
    {α : Type u} {E : Type v}
    [MeasurableSpace α]
    [NormedAddCommGroup E] [Min E]
    {μ : Measure α} {p : ℝ≥0∞} {f g : α → E}
    (hf : MemLp f p μ) (hg : MemLp g p μ) :
    MemLp (fun x => min (f x) (g x)) p μ := by
  sorry