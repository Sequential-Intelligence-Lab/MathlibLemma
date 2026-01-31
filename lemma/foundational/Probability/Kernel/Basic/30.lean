import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.swap_map_fst {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (ab : α × β) :
    MeasureTheory.Measure.map Prod.fst
      ((ProbabilityTheory.Kernel.swap (α := α) (β := β)) ab) =
      MeasureTheory.Measure.dirac ab.2 := by
  have h1 : (ProbabilityTheory.Kernel.swap (α := α) (β := β) ) ab = MeasureTheory.Measure.dirac (Prod.swap ab) := by
    simp [ProbabilityTheory.Kernel.swap, ProbabilityTheory.Kernel.deterministic]
  rw [h1]
  have h2 : MeasureTheory.Measure.map Prod.fst (MeasureTheory.Measure.dirac (Prod.swap ab)) = MeasureTheory.Measure.dirac (Prod.fst (Prod.swap ab)) := by
    apply MeasureTheory.Measure.map_dirac
    all_goals try { measurability }
  rw [h2]
  all_goals try { simp [Prod.fst, Prod.swap] }