var ConsoleLib = {
  console_log: function(str) {
    var el = document.getElementById("console");
    el.innerHTML += UTF8ToString(str);
  }
};

mergeInto(LibraryManager.library, ConsoleLib);
