document.addEventListener("keydown", (e) => {
  const a = document.getElementById(e.code);
  if (a) {
    e.preventDefault();
    a.click();
  }
});
