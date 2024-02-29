import React from "react";
// or less ideally
import { Button } from "react-bootstrap";
export default function Home() {
  return (
    <>
      <div
        className="text-3xl font-bold underline"
        style={{ border: "1px solid red" }}
      >
        salut
        <div className="text-center text-2xl text-blue-500">Hello world!</div>
        <div>cava </div>
        <div class="grid grid-cols-6 gap-4">
          <div class="col-start-2 col-span-4">01</div>
          <div class="col-start-1 col-end-3">02</div>
          <div class="col-end-7 col-span-2">03</div>
          <div class="col-start-1 col-end-7">04</div>
        </div>
      </div>

      <button type="button" class="btn btn-dark">
        Dark
      </button>
    </>
  );
}
