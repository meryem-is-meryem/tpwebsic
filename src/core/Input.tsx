import React from "react";

interface InputProps {
  labelName: string;
  placeholder: string;
  type: string;
  id: string;
  name: string;
  labelbo: boolean;
}

const Input: React.FC<InputProps> = ({
  labelName,
  placeholder,
  type,
  id,
  name,
  labelbo,
}) => {
  return (
    <div className="relative mb-6">
      {labelbo && (
        <label
          htmlFor={id}
          className="pointer-events-none relative left-3 max-w-[90%] text-neutral-500 ease-out peer-focus:text-primary peer-data-[twe-input-state-active]:scale-[0.8] motion-reduce:transition-none"
        >
          {labelName}
        </label>
      )}

      <input
        type={type}
        className="min-h-[auto] w-full rounded border-b border-indigo-500 bg-white px-3 py-[0.32rem] focus:outline-none focus:ring focus:border-blue-500"
        id={id}
        placeholder={placeholder}
        name={name}
      />
    </div>
  );
};

export default Input;
