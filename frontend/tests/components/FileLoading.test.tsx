import React from "react"
import { fireEvent, render, screen } from "@testing-library/react"
import FileLoading from "../../src/components/FileLoading"

describe("file loading component", () => {
  test("should render the component with downloading state", () => {
    render(<FileLoading fileName="Test" status="downloading" />)

    const element = screen.getByTestId("file-downloading-wrapper")
    expect(element).toBeInTheDocument()
  })

  test("should render the component with downloaded state", () => {
    render(<FileLoading fileName="Test" status="downloaded" />)

    const element = screen.getByTestId("file-downloaded-wrapper")
    expect(element).toBeInTheDocument()
  })

  test("should render the component with uploading state", () => {
    render(<FileLoading fileName="Test" status="uploading" />)

    const element = screen.getByTestId("file-uploading-wrapper")
    expect(element).toBeInTheDocument()
  })

  test("should render the component with uploaded state", () => {
    render(<FileLoading fileName="Test" status="uploaded" />)

    const element = screen.getByTestId("file-uploaded-wrapper")
    expect(element).toBeInTheDocument()
  })

  test("should render the delete button", () => {
    let uploadedFiles: File[]
    uploadedFiles = [new File([""], "Test")]
    const handleDeleteClick = (index: number) => {
      uploadedFiles = uploadedFiles.filter((_, i) => i !== index)
    }
    render(
      <FileLoading
        fileName="Test"
        status="downloaded"
        handleDeleteClick={handleDeleteClick}
      />
    )

    const deleteButton = screen.getByTestId("delete-button")
    expect(deleteButton).toBeInTheDocument()
  })

  test("should delete the file", () => {
    let uploadedFiles: File[]
    uploadedFiles = [new File([""], "Test")]
    const handleDeleteClick = (index: number) => {
      uploadedFiles = uploadedFiles.filter((_, i) => i !== index)
    }
    render(
      <FileLoading
        fileName="Test"
        status="downloaded"
        handleDeleteClick={() => handleDeleteClick(0)}
      />
    )

    const deleteButton = screen.getByTestId("delete-button")
    fireEvent.click(deleteButton)
    expect(uploadedFiles).toHaveLength(0)
  })
})
