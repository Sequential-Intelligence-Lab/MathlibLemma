import Mathlib

-- 36. Stopped process respects linearity.
lemma stoppedProcess_add
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [AddGroup β]
  (u v : ι → Ω → β) (τ : Ω → WithTop ι) :
  MeasureTheory.stoppedProcess (fun i ω => u i ω + v i ω) τ
    =
  fun i ω => MeasureTheory.stoppedProcess u τ i ω
    + MeasureTheory.stoppedProcess v τ i ω := by
  classical
  -- extensionality in both indices
  funext i
  funext ω
  -- unfold and use the simp-lemmas for stoppedProcess
  -- `simp` will split on the relevant cases for `τ ω` and the inequalities.
  -- The algebraic equality is then trivial.
  simp [MeasureTheory.stoppedProcess, add_comm, add_left_comm, add_assoc]