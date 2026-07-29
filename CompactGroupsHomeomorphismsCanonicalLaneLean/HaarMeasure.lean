import canonicalLaneMathlib.AdmissibleClass
import .CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure HaarMeasure (G : Type u) [TopologicalSpace G] (hG : CompactGroup G) where
  measure : MeasureTheory.Measure G
  leftInvariant : ∀ (g : G) (s : Set G), measure (g • s) = measure s
  rightInvariant : ∀ (g : G) (s : Set G), measure (s • g) = measure s
  innerRegular : measure.InnerRegular

def HaarMeasureClosed (G : Type u) [TopologicalSpace G] (hG : CompactGroup G) (h : HaarMeasure G hG) : Prop :=
  h.leftInvariant ∧ h.rightInvariant ∧ h.innerRegular

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse