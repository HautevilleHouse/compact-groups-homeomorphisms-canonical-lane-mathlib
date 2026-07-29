import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure PontryaginDualityModel (G : CompactGroupModel) where
  dualGroup : Type u
  dualTopology : TopologicalSpace dualGroup
  dualGroupIsCompact : CompactSpace dualGroup
  bidualIsomorphism : Prop
  isDuality : Prop
  dualityConclusion : bidualIsomorphism ∧ isDuality

structure PontryaginDualityEvidence {G : CompactGroupModel}
  (P : PontryaginDualityModel G) where
  bidualIsomorphismClosed : P.bidualIsomorphism
  isDualityClosed : P.isDuality

def PontryaginDualityClosed {G : CompactGroupModel}
  (P : PontryaginDualityModel G) : Prop :=
  P.bidualIsomorphism ∧ P.isDuality

theorem pontryagin_duality_closed_from_evidence
  {G : CompactGroupModel} (P : PontryaginDualityModel G)
  (E : PontryaginDualityEvidence P) : PontryaginDualityClosed P := by
  exact And.intro E.bidualIsomorphismClosed E.isDualityClosed

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse