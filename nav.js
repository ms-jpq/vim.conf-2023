const hr = document.querySelectorAll("hr");
let pos = 0;

const wheel = {
  j: () => {
    pos = pos < hr.length - 1 ? pos + 1 : 0;
    return true;
  },
  k: () => {
    pos = pos > 0 ? pos - 1 : hr.length - 1;
    return true;
  },
};

document.addEventListener("keydown", (e) => {
  if (wheel[e.code]?.()) {
    e.preventDefault();
    hr[pos]?.scrollIntoView({ block: "end" });
  }
});
