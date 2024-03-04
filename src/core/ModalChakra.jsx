import React from "react";
import {
  Modal,
  ModalOverlay,
  ModalContent,
  ModalHeader,
  ModalFooter,
  ModalBody,
  ModalCloseButton,
  Button,
} from "@chakra-ui/react";
export default function ModalChakra({
  isOpen,
  onOpen,
  onClose,
  title,
  children,
  onEsc,
  onOverlayClick,
  buttonName,
}) {
  //   const { isOpen, onOpen, onClose } = useDisclosure();
  return (
    <>
      <Button onClick={onOpen} className="w-full py-4 px-2">
        {buttonName}
      </Button>

      <Modal isOpen={isOpen} onEsc={onEsc} onOverlayClick={onOverlayClick}>
        <ModalOverlay />
        <ModalContent>
          <ModalHeader>{title}</ModalHeader>
          <ModalCloseButton onClick={onEsc} />
          <ModalBody>
            <p>{children} </p>
          </ModalBody>

          <ModalFooter>
            <Button colorScheme="blue" mr={3} onClick={onClose}>
              Close
            </Button>
          </ModalFooter>
        </ModalContent>
      </Modal>
    </>
  );
}
