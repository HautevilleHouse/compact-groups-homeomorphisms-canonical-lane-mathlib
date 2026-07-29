import compactGroupsHomeomorphismsCanonicalLaneLean.HomeomorphismGroup

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure ClassificationPackage {G : Type u} [TopologicalSpace G] [Group G] [ContinuousMul G]
    (P : HomeomorphismGroupPackage G) where
  maximalTorus : Prop
  weylGroup : Prop
  rootSystem : Prop
  classificationResult : Prop

def ClassificationClosed {G : Type u} [TopologicalSpace G] [Group G] [ContinuousMul G] {P : HomeomorphismGroupPackage G} (C : ClassificationPackage P) : Prop :=
  C.maximalTorus ∧ C.weylGroup ∧ C.rootSystem ∧ C.classificationResult

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse
