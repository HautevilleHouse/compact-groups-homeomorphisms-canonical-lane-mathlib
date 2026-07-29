import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure CompactGroupStructure (G : Type u) [TopologicalSpace G] where
  isGroup : Group G
  isCompact : CompactSpace G
  isTopologicalGroup : TopologicalGroup G
  groupOperationsContinuous : Continuous (fun p : G × G => p.1 * p.2) ∧ Continuous (fun (g : G) => g⁻¹)
  hausdorff : T2Space G

def CompactGroupClosed (G : Type u) [TopologicalSpace G] (C : CompactGroupStructure G) : Prop :=
  C.isGroup.1 ∧ C.isCompact.1 ∧ C.isTopologicalGroup.1 ∧ C.groupOperationsContinuous.1 ∧ C.groupOperationsContinuous.2 ∧ C.hausdorff.1

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse