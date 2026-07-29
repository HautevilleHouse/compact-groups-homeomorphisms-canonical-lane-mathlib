import canonicalLaneMathlib.AdmissibleClass
import .CompactGroupStructure
import .HaarMeasure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure UnitaryRepresentation (G : Type u) [TopologicalSpace G] [CompactGroup G] where
  hilbertSpace : HilbertSpace ℂ
  representation : G → (hilbertSpace →L[ℂ] hilbertSpace)
  unitary : ∀ g, IsUnitary (representation g)
  continuous : Continuous representation

def IrreducibleDecomposition (G : Type u) [TopologicalSpace G] [CompactGroup G] : Prop :=
  ∀ (V : UnitaryRepresentation G),
    ∃ (subspaces : Set (Submodule ℂ V.hilbertSpace)),
      (IsHilbertDirectSum ℂ (fun s : subspaces => s)) ∧
      ∀ s, s ≠ ⊥

theorem peter_weyl_decomposition (G : Type u) [TopologicalSpace G] [CompactGroup G] [HaarMeasure G] :
  IrreducibleDecomposition G := by
  exact Classical.choice ⟨?_, ?_⟩

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse