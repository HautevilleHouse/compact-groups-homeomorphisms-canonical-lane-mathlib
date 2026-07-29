import CompactGroupsHomeomorphismsCanonicalLaneLean.CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure HomomorphismFoundationPackage {G H : CompactGroupSpace}
    (pkgG : CompactGroupStructurePackage G) (pkgH : CompactGroupStructurePackage H) where
  homMap : G.carrier → H.carrier
  continuousHom : Continuous homMap
  respectsMul : ∀ x y : G.carrier, homMap (x * y) = homMap x * homMap y
  imageCompact : CompactSpace (Set.range homMap)
  kernelClosed : IsClosed {x : G.carrier | homMap x = 1}
  imageClosed : IsClosed (Set.range homMap)

structure HomomorphismFoundationEvidence {G H : CompactGroupSpace}
    {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    (pkg : HomomorphismFoundationPackage pkgG pkgH) where
  continuousHomClosed : pkg.continuousHom
  respectsMulClosed : pkg.respectsMul
  imageCompactClosed : pkg.imageCompact
  kernelClosedClosed : pkg.kernelClosed
  imageClosedClosed : pkg.imageClosed

def HomomorphismFoundationClosed {G H : CompactGroupSpace}
    {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    (pkg : HomomorphismFoundationPackage pkgG pkgH) : Prop :=
  pkg.continuousHom ∧ pkg.respectsMul ∧ pkg.imageCompact ∧ pkg.kernelClosed ∧ pkg.imageClosed

theorem homomorphism_foundation_closed_from_evidence
    {G H : CompactGroupSpace} {pkgG : CompactGroupStructurePackage G} {pkgH : CompactGroupStructurePackage H}
    (pkg : HomomorphismFoundationPackage pkgG pkgH) (E : HomomorphismFoundationEvidence pkg) :
    HomomorphismFoundationClosed pkg := by
  exact And.intro E.continuousHomClosed
    (And.intro E.respectsMulClosed
      (And.intro E.imageCompactClosed
        (And.intro E.kernelClosedClosed E.imageClosedClosed)))

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse