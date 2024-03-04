import { Badge } from "antd";
import React from "react";

export default function BadgePrice({ price }) {
  return (
    <div className="flex justify-end pr-2 ">
      {" "}
      <Badge.Ribbon text={price}></Badge.Ribbon>
    </div>
  );
}
