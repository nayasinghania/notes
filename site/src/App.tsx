import "./index.css";
import structure from "../structure.json";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";

type FileStructure = string[] | [string, FileStructure][];

const FileTreeItem = ({
  name,
  content,
  depth = 0,
  path = [],
  defaultOpen = false,
}: {
  name: string;
  content: FileStructure;
  depth?: number;
  path?: string[];
  defaultOpen?: boolean;
}) => {
  const indent = "\u00A0".repeat(depth * 4);

  const formatFile = (name: string) => {
    return name.split(".")[0];
  };

  const handleFileClick = (file: string) => {
    const fullPath = [...path, name, file].join("/");
    window.location.href = `/${fullPath}`;
  };

  // Check if the content contains any arrays (subdirectories)
  const hasSubdirs =
    Array.isArray(content) && content.some((item) => Array.isArray(item));
  // Check if the content contains any strings (files)
  const hasFiles =
    Array.isArray(content) && content.some((item) => typeof item === "string");

  if (!hasSubdirs && hasFiles) {
    // Render files-only view
    return (
      <Accordion
        type="single"
        collapsible
        defaultValue={defaultOpen ? name : undefined}
      >
        <AccordionItem value={name}>
          <AccordionTrigger className="hover:no-underline hover:cursor-pointer">
            {indent}
            {name}
          </AccordionTrigger>
          <AccordionContent>
            {(content as string[]).map((file) => (
              <div
                key={file}
                onClick={() => handleFileClick(file)}
                className="cursor-pointer pb-4"
              >
                {indent}&nbsp;&nbsp;&nbsp;&nbsp;{formatFile(file as string)}
              </div>
            ))}
          </AccordionContent>
        </AccordionItem>
      </Accordion>
    );
  } else {
    // Render mixed content or directories-only view
    return (
      <Accordion
        type="single"
        collapsible
        defaultValue={defaultOpen ? name : undefined}
      >
        <AccordionItem value={name}>
          <AccordionTrigger className="hover:no-underline hover:cursor-pointer">
            {indent}
            {name}
          </AccordionTrigger>
          <AccordionContent>
            {/* Then render subdirectories */}
            {hasSubdirs &&
              (content as (string | [string, FileStructure])[])
                .filter((item) => Array.isArray(item))
                .map(([childName, childContent]) => (
                  <FileTreeItem
                    key={childName}
                    name={childName}
                    content={childContent}
                    depth={depth + 1}
                    path={[...path, name]}
                  />
                ))}
            {/* Render files first */}
            {hasFiles &&
              (content as (string | [string, FileStructure])[])
                .filter((item) => typeof item === "string")
                .map((file) => (
                  <div
                    key={file as string}
                    onClick={() => handleFileClick(file as string)}
                    className="cursor-pointer pb-4"
                  >
                    {indent}&nbsp;&nbsp;&nbsp;&nbsp;{formatFile(file as string)}
                  </div>
                ))}
          </AccordionContent>
        </AccordionItem>
      </Accordion>
    );
  }
};

function App() {
  return (
    <div className="container m-8 max-w-[90%]">
      <h1>Notes</h1>
      {(structure as [string, FileStructure][]).map(([name, content]) => (
        <FileTreeItem
          key={name}
          name={name}
          content={content}
          defaultOpen={name === "Spring 2025"}
        />
      ))}
    </div>
  );
}

export default App;
