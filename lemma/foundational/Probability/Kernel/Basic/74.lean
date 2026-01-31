import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open ProbabilityTheory

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    Kernel α γ :=
  Kernel.deterministic (g ∘ f) (hg.comp hf)

theorem Kernel.deterministicComp_id_left {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : β → γ) (hf : Measurable f) :
    Kernel.deterministicComp id f measurable_id hf = Kernel.deterministic f hf := by
  have h1 : f ∘ id = f := by
    funext x
    simp
  have h2 : hf.comp measurable_id = hf := by
    simp
  ext a s hs
  simp [h1, h2, Kernel.deterministicComp]