import React from "react";
import { Badge, Card, Space } from "antd";
import { CardHoverEffectDemo } from "../core/CardHoverEffectDemo";

export default function About() {
  return (
    <>
      <div style={{ border: "1px solid red" }}>about</div>

      <div class="relative overflow-hidden w-56 h-56 bg-white border">
        <div class="absolute left-0 top-0 h-16 w-16">
          <div class="absolute transform -rotate-45 bg-blue-600 text-center text-white font-semibold py-1 left-[-34px] top-[32px] w-[170px]">
            Popular
          </div>
        </div>
      </div>

      {/* <Space
        direction="vertical"
        size="middle"
        style={{
          width: "100%",
        }}
      > */}
      {/* <div className="rounded-2xl h-full w-full p-4 overflow-hidden shadow-lg border border-solide dark:border-white/[0.2] group-hover:border-slate-700 relative z-20">
        <div className="relative z-50">
          <div className="p-4 ">
            {" "}
            <Badge.Ribbon text="Hippies"></Badge.Ribbon>{" "}
          </div>
        </div>
      </div>

      </Space> */}
      <div className="px-8  py-8 "></div>
    </>
  );
}
