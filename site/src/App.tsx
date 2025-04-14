import "./index.css";
import structure from "../structure.json";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";

function App() {
  const handleFileClick = (semester: string, course: string, file: string) => {
    window.location.href = `/${semester}/${course}/${file}`;
  };

  return (
    <div className="container m-8 max-w-[90%]">
      <h1>Notes</h1>

      {Object.entries(structure).map(([section, semesters]) => (
        <Accordion type="single" collapsible key={section}>
          <AccordionItem value={section}>
            {" "}
            <AccordionTrigger className="hover:no-underline hover:cursor-pointer">
              {section}
            </AccordionTrigger>
            <AccordionContent>
              {section === "Archive" &&
                Object.entries(semesters).map(([semester, courses]) => (
                  <Accordion type="single" collapsible key={semester}>
                    <AccordionItem value={semester}>
                      <AccordionTrigger className="hover:no-underline hover:cursor-pointer">
                        &nbsp;&nbsp;&nbsp;&nbsp;{semester}
                      </AccordionTrigger>
                      <AccordionContent>
                        {Object.entries(courses).map(([course, files]) => (
                          <Accordion type="single" collapsible key={course}>
                            <AccordionItem value={course}>
                              <AccordionTrigger className="hover:no-underline hover:cursor-pointer">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                {course}
                              </AccordionTrigger>
                              <AccordionContent>
                                <div>
                                  {(files as string[]).map((file) => (
                                    <div
                                      key={file}
                                      onClick={() =>
                                        handleFileClick(
                                          "Archive/" + semester,
                                          course,
                                          file,
                                        )
                                      }
                                      className="cursor-pointer"
                                    >
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      {file}
                                    </div>
                                  ))}
                                </div>
                              </AccordionContent>
                            </AccordionItem>
                          </Accordion>
                        ))}
                      </AccordionContent>
                    </AccordionItem>
                  </Accordion>
                ))}

              {section !== "Archive" &&
                Object.entries(semesters).map(([course, files]) => (
                  <Accordion type="single" collapsible key={course}>
                    <AccordionItem value={course}>
                      <AccordionTrigger className="hover:no-underline hover:cursor-pointer">
                        &nbsp;&nbsp;&nbsp;&nbsp;{course}
                      </AccordionTrigger>
                      <AccordionContent>
                        <div>
                          {(files as string[]).map((file) => (
                            <div
                              key={file}
                              onClick={() =>
                                handleFileClick("Spring 2025", course, file)
                              }
                              className="cursor-pointer"
                            >
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              {file}
                            </div>
                          ))}
                        </div>
                      </AccordionContent>
                    </AccordionItem>
                  </Accordion>
                ))}
            </AccordionContent>
          </AccordionItem>
        </Accordion>
      ))}
    </div>
  );
}

export default App;
