import structure from '../structure.json'

function App() {

  const handleFileClick = (semester: string, course: string, file: string) => {
    window.location.href = `/${semester}/${course}/${file}`
  }

  return (
    <div>
      <h1>Notes</h1>
      {Object.entries(structure).map(([semester, courses]) => (
        <div key={semester} className="semester">
          <h2>{semester}</h2>
          {Object.entries(courses).map(([course, files]) => (
            <div key={course} className="course">
              <h3>{course}</h3>
              <div className="files">
                {(files as string[]).map((file) => (
                  <div
                    key={file}
                    className="file"
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