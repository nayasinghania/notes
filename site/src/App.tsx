import "./index.css"
import structure from '../structure.json'

function App() {

  const handleFileClick = (semester: string, course: string, file: string) => {
    window.location.href = `/${semester}/${course}/${file}`
  }

  return (
    <div className="container m-8 max-w-2xl">
      <h1>Notes</h1>
      {Object.entries(structure).map(([semester, courses]) => (
        <div key={semester} className="mt-4">
          <h2>{semester}</h2>
          {Object.entries(courses).map(([course, files]) => (
            <div key={course} className="mt-2">
              <h3>{course}</h3>
              <div>
                {(files as string[]).map((file) => (
                  <div
                    key={file}
                    onClick={() => handleFileClick(semester, course, file)}
                  >
                    📄 {file}
                  </div>
                ))}
              </div>
            </div>
          ))}
        </div>
      ))}
    </div>
  )
}

export default App