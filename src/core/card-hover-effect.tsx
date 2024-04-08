// import { cn } from "@/utils/cn";
import { AnimatePresence, motion } from "framer-motion";
// import Link from "next/link";
import { Children, useState } from "react";
import { cn } from "../utils/cn";
import React from "react";
import BadgePrice from "./BadgePrice";
import ModalChakra from "./ModalChakra";

export const HoverEffect = ({
  items,
  className,
}: {
  items: {
    title: string;
    image: string;
    link: string;
    price: string;
  }[];
  className?: string;
}) => {
  const [hoveredIndex, setHoveredIndex] = useState<number | null>(null);
  const [texte, setTexte] = useState(0); // Utilisation du hook personnalisé
  const [isopen, setIsopen] = useState(false);
  const handleClose = () => {
    setIsopen(false);
  };
  const handleOpen = () => {
    setIsopen(true);
  };
  return (
    <div
      className={cn(
        "grid grid-cols-2 md:grid-cols-2  lg:grid-cols-4  py-10 w-full",
        className
      )}
      style={{ border: "solid 1px red" }}
    >
      {items.map((item, idx) => (
        <div
          //   href={item?.link}
          key={item?.link}
          className="relative group  block p-2 h-full w-full"
          onMouseEnter={() => {
            setHoveredIndex(idx);
            setTexte(1);
          }}
          onMouseLeave={() => {
            setHoveredIndex(null);
            setTexte(0);
          }}
        >
          {/* <div className="flex justify-end  pr-2 ">
            <Badge.Ribbon text={item.price}></Badge.Ribbon>
          </div> */}
          <BadgePrice price={item.price} />
          <AnimatePresence>
            {hoveredIndex === idx && (
              <motion.span
                className="absolute inset-0 h-full w-full bg-neutral-200 dark:bg-slate-800/[0.8] block  rounded-3xl"
                layoutId="hoverBackground"
                initial={{ opacity: 0 }}
                animate={{
                  opacity: 1,
                  transition: { duration: 0.15 },
                }}
                exit={{
                  opacity: 0,
                  transition: { duration: 0.15, delay: 0.2 },
                }}
              />
            )}
          </AnimatePresence>

          <Card>
            {(idx === 0 || idx === 4 || idx === 6) && (
              <div className="absolute transform -rotate-45 bg-blue-600 text-center text-white font-semibold py-1 left-[-60px] top-[20px] w-[170px]">
                Promotion
              </div>
            )}

            <CardTitle className={hoveredIndex === idx ? "text-white" : ""}>
              {item.title}
              {idx}
            </CardTitle>

            <CardBody className="flex flex-col justify-between">
              <div className="relative" style={{ aspectRatio: "2/3" }}>
                <img
                  src={item.image}
                  className="absolute inset-0 w-full h-full object-cover"
                  alt="Product"
                />
              </div>
              <div
                className={`text-${hoveredIndex === idx ? "white" : "black"} ${
                  idx != 0 ? " pt-8" : "pt-2"
                }`}
              >
                <ModalChakra
                  isOpen={isopen}
                  onClose={handleClose}
                  onOpen={handleOpen}
                  onEsc={handleClose}
                  onOverlayClick={handleClose}
                  title="Détail du produit"
                  buttonName="Détails"
                >
                  je suis le super details
                </ModalChakra>
              </div>
            </CardBody>
          </Card>
        </div>
      ))}
    </div>
  );
};

export const Card = ({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode;
}) => {
  return (
    <div
      className={cn(
        "rounded-2xl h-full w-full p-4 overflow-hidden shadow-lg border border-solide dark:border-white/[0.2] group-hover:border-slate-700 relative z-20",
        className
      )}
    >
      <div className="relative z-50">
        <div className="p-4 ">{children} </div>
      </div>
    </div>
  );
};
export const CardTitle = ({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode;
}) => {
  return (
    <h4 className={cn(" font-bold tracking-wide mt-4", className)}>
      {children}
    </h4>
  );
};
export const CardBody = ({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode;
}) => {
  return (
    <div
      className={cn(
        "mt-8 text-zinc-400 tracking-wide leading-relaxed text-sm",
        className
      )}
    >
      {children}
    </div>
  );
};
