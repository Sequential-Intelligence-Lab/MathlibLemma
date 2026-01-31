import Mathlib

open scoped ENNReal
open MeasureTheory

variable {α E : Type*}

lemma Memℓp_of_sub_mem
    [MeasurableSpace α] [MeasureSpace α]
    [NormedAddCommGroup E]
    {p : ℝ≥0∞}
    {f g : α → E}
    (h : Memℓp (fun x => f x - g x) p)
    (hg : Memℓp g p) :
    Memℓp f p := by
  sorry