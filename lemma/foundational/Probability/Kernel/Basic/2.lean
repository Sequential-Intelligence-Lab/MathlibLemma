import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open ProbabilityTheory
open MeasureTheory

noncomputable def Kernel_deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel_deterministic_mk {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {f : α → β} (hf : Measurable f) :
    (Kernel.deterministic f hf : Kernel α β) =
      ⟨fun a => Measure.dirac (f a),
        by
          -- measurability proof (left as sorry)
          sorry⟩ := by
  rfl