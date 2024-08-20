const { add, greet } = require("../src/example");

describe("add function", () => {
  test("adds two positive numbers correctly", () => {
    expect(add(2, 3)).toBe(5);
  });

  test("handles negative numbers", () => {
    expect(add(-1, 1)).toBe(0);
  });

  test("adds zero correctly", () => {
    expect(add(5, 0)).toBe(5);
  });
});

describe("greet function", () => {
  test("greets a person by name", () => {
    expect(greet("Alice")).toBe("Hello, Alice!");
  });

  test("handles empty string", () => {
    expect(greet("")).toBe("Hello, !");
  });
});
