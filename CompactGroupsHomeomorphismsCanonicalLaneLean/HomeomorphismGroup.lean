import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure HomeomorphismGroupData (G : Type u) [TopologicalSpace G] where
  underlyingSet : Set (G → G)
  groupLaw : Group underlyingSet
  topology : TopologicalSpace underlyingSet
  groupActionContinuous : Continuous (fun (f : underlyingSet) (x : G) => f x)
  compactOpenTopology : topology = ContinuousMap.compactOpen

def HomeomorphismGroupClosed (G : Type u) [TopologicalSpace G] (H : HomeomorphismGroupData G) : Prop :=
  H.underlyingSet.1 ∧ H.groupLaw.1 ∧ H.topology.1 ∧ H.groupActionContinuous.1 ∧ H.compactOpenTopology.1

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse