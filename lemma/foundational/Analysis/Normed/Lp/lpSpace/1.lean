import Mathlib

open scoped ENNReal

open MeasureTheory

lemma Memℓp_congr {α : Type*} {E : α → Type*} [∀ i, NormedAddCommGroup (E i)]
    {p : ℝ≥0∞} {f g : ∀ i, E i} (hfg : ∀ i, f i = g i) :
    Memℓp f p ↔ Memℓp g p := by
  classical
  have hfg' : f = g := funext hfg
  simpa [hfg'] 

lemma MemLp_congr {α E : Type*} [MeasurableSpace α] [NormedAddCommGroup E]
    {μ : Measure α} {p : ℝ≥0∞} {f g : α → E} (hfg : ∀ i, f i = g i) :
    MemLp f p μ ↔ MemLp g p μ := by
  classical
  have hfg' : f = g := funext hfg
  simpa [hfg']