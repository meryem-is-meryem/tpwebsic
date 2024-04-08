// // import { HoverEffect } from "../ui/card-hover-effect";

import { HoverEffect } from "./card-hover-effect";
import projects from "../data/dataProduct";
export function CardHoverEffectDemo() {
  return (
    <>
      <div className="flex justify-between">
        <div className="w-1/4">Contenu côté gauche</div>
        <div className="max-w-7xl mx-auto px-8">
          <HoverEffect items={projects} />
        </div>
        <div className="w-1/4">Contenu côté droit</div>
      </div>
    </>
  );
}
