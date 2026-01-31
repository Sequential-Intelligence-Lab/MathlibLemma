import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
open MeasureTheory
open ProbabilityTheory

theorem Kernel.const_restrict {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : Measure β} {s : Set β} (hs : MeasurableSet s) :
    (Kernel.const α μ).restrict hs = Kernel.const α (μ.restrict s) := by
  ext a
  simp [Kernel.restrict_apply, Kernel.const_apply]

lemma Kernel.const_restrict' {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    {μ : Measure β} {s : Set β} (hs : MeasurableSet s) :
    (Kernel.const α μ).restrict hs =
      Kernel.const α (μ.restrict s) := by
  have h_main : (Kernel.const α μ).restrict hs = Kernel.const α (μ.restrict s) := by
    ext x
    simp [Kernel.const, Kernel.restrict, Measure.restrict_apply]
    <;>
    congr 1
    <;>
    ext t
    <;>
    simp [Measure.restrict_apply, hs]
    <;>
    ring
    <;>
    simp_all [Set.inter_comm]
    <;>
    rfl

  apply h_main
