let make = (~csrf, ()) =>
  <div class_="flex flex-col gap-6 w-1/2">
    <h1 class_="text-3xl font-bold"> {JSX.string("Create an article")} </h1>
    <form action="/articles/" method_="post">
      <div class_="flex flex-col gap-4">
        <input type_="hidden" name="dream.csrf" value=csrf />
        <div class_="flex flex-col gap-4">
          <label for_="title" class_="text-gray-900 font-medium">
            {JSX.string("Title")}
          </label>
          <input
            id="title"
            name="title"
            type_="text"
            class_="p-2 border border-gray-300 rounded-md"
          />
        </div>
        <div class_="flex flex-col gap-4">
          <label for_="content" class_="text-gray-900 font-medium">
            {JSX.string("Content")}
          </label>
          <textarea
            id="content"
            name="content"
            class_="p-2 border border-gray-300 rounded-md"
          />
        </div>
        <button type_="submit" class_="bg-blue-500 text-white p-2 rounded-md">
          {JSX.string("Create")}
        </button>
      </div>
    </form>
  </div>;
