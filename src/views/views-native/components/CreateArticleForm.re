[@react.component]
let make = (~csrf) =>
  <div className="flex flex-col gap-6 w-1/2">
    <h1 className="text-3xl font-bold">
      {React.string("Create an article")}
    </h1>
    <form action="/articles/" method_="post">
      <div className="flex flex-col gap-4">
        <input type_="hidden" name="dream.csrf" value=csrf />
        <div className="flex flex-col gap-4">
          <label htmlFor="title" className="text-gray-900 font-medium">
            {React.string("Title")}
          </label>
          <input
            id="title"
            name="title"
            type_="text"
            className="p-2 border border-gray-300 rounded-md"
          />
        </div>
        <div className="flex flex-col gap-4">
          <label htmlFor="content" className="text-gray-900 font-medium">
            {React.string("Content")}
          </label>
          <textarea
            id="content"
            name="content"
            className="p-2 border border-gray-300 rounded-md"
          />
        </div>
        <button
          type_="submit" className="bg-blue-500 text-white p-2 rounded-md">
          {React.string("Create")}
        </button>
      </div>
    </form>
  </div>;
