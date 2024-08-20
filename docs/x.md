# Project Context for AI Assistant

## 🚀 IMPORTANT CONTEXT FOR AI ASSISTANT

This file contains all the files used in the project, as well as all relevant logs and cursor rules. This comprehensive context is provided to facilitate information exchange between the user and the AI assistant.

## 📁 Project Structure

```plaintext
.
├── .cursorcontext.sh
├── .cursorrules
├── LICENSE
├── Logs
│   ├── build_output.log
│   ├── coverage_output.log
│   ├── lint_output.log
│   └── test_output.log
├── README.md
├── docs
│   └── x.md
├── imgs
│   └── cursorrules.png
├── package.json
├── src
│   └── example.js
└── test
    └── example.test.js

6 directories, 13 files
```

## 🔍 DEBUG INFORMATION

- Project root: .
- Output file: ./docs/x.md
- Cursor rules file: ./.cursorrules
- Build log file: ./Logs/build_output.log
- Test log file: ./Logs/test_output.log
- Lint log file: ./Logs/lint_output.log
- Coverage log file: ./Logs/coverage_output.log
- Package.json file: ./package.json

## ⚠️ ATTENTION! CRITICAL RULES - MUST BE FOLLOWED!

These rules are crucial for all interactions. Ignore them at your peril!

## 🚨 CURSOR RULES - READ AND FOLLOW THESE!

```json
{
  "rules": [
    {
      "name": "Verify Information",
      "pattern": "(?i)\\b(assume|assumption|guess|speculate)\\b",
      "message": "Always verify information before presenting it. Do not make assumptions or speculate without clear evidence."
    },
    {
      "name": "File-by-File Changes",
      "pattern": "// MULTI-FILE CHANGE:",
      "message": "Make changes file by file and give me a chance to spot mistakes"
    },
    {
      "name": "No Apologies",
      "pattern": "(?i)\\b(sorry|apologize|apologies)\\b",
      "message": "Never use apologies"
    },
    {
      "name": "No Understanding Feedback",
      "pattern": "(?i)\\b(understand|understood|got it)\\b",
      "message": "Avoid giving feedback about understanding in comments or documentation"
    },
    {
      "name": "No Whitespace Suggestions",
      "pattern": "(?i)\\b(whitespace|indentation|spacing)\\b",
      "message": "Don't suggest whitespace changes"
    },
    {
      "name": "No Summaries",
      "pattern": "(?i)\\b(summary|summarize|overview)\\b",
      "message": "Don't summarize changes made"
    },
    {
      "name": "No Inventions",
      "pattern": "(?i)\\b(suggest|recommendation|propose)\\b",
      "message": "Don't invent changes other than what's explicitly requested"
    },
    {
      "name": "No Unnecessary Confirmations",
      "pattern": "(?i)\\b(make sure|confirm|verify|check)\\b",
      "message": "Don't ask for confirmation of information already provided in the context"
    },
    {
      "name": "Preserve Existing Code",
      "pattern": "(?i)\\b(remove|delete|eliminate|destroy)\\b",
      "message": "Don't remove unrelated code or functionalities. Pay attention to preserving existing structures."
    },
    {
      "name": "Single Chunk Edits",
      "pattern": "(?i)\\b(first|then|next|after that|finally)\\b",
      "message": "Provide all edits in a single chunk instead of multiple-step instructions or explanations for the same file"
    },
    {
      "name": "No Implementation Checks",
      "pattern": "(?i)\\b(make sure|verify|check|confirm) (it's|it is|that) (correctly|properly) implemented\\b",
      "message": "Don't ask the user to verify implementations that are visible in the provided context"
    },
    {
      "name": "No Unnecessary Updates",
      "pattern": "(?i)\\b(update|change|modify|alter)\\b.*\\bno changes\\b",
      "message": "Don't suggest updates or changes to files when there are no actual modifications needed"
    },
    {
      "name": "Provide Real File Links",
      "pattern": "(?i)\\b(file|in)\\b.*\\b(x\\.md)\\b",
      "message": "Always provide links to the real files, not x.md"
    },
    {
      "name": "No Previous x.md Consideration",
      "pattern": "(?i)\\b(previous|earlier|last)\\b.*\\bx\\.md\\b",
      "message": "Do not consider any previous x.md files in your memory. Complain if the contents are the same as previous runs."
    },
    {
      "name": "No Current Implementation",
      "pattern": "(?i)\\b(current|existing)\\s+(implementation|code)\\b",
      "message": "Don't show or discuss the current implementation unless specifically requested"
    },
    {
      "name": "Check x.md Content",
      "pattern": "(?i)\\b(file|content|implementation)\\b",
      "message": "Remember to check the x.md file for the current file contents and implementations"
    }
  ]
}```

## 🏗️ BUILD OUTPUT LOG - REVIEW BUILD RESULTS!

```log
[1/1] Compiling plugin SwiftFormatPlugin
Building for debugging...
[1/8] Copying autohotkeymac.sh
[2/8] Write sources
[2/8] Write AutoHotkeyMac-entitlement.plist
[4/8] Write swift-version--58304C5D6DBC2206.txt
[6/15] Compiling AutoHotkeyMac resource_bundle_accessor.swift
[7/15] Compiling AutoHotkeyMac LogMessage.swift
[8/15] Compiling AutoHotkeyMac main.swift
[9/15] Compiling AutoHotkeyMac StatusBarController.swift
[10/15] Compiling AutoHotkeyMac Configurations.swift
[11/15] Emitting module AutoHotkeyMac
[12/15] Compiling AutoHotkeyMac AppDelegate.swift
[12/15] Write Objects.LinkFileList
[13/15] Linking AutoHotkeyMac
[14/15] Applying AutoHotkeyMac
Build complete! (6.19s)
```

## 🧪 TEST OUTPUT LOG - REVIEW TEST RESULTS!

```log
[2K[0/1] Planning build[2K[1/1] Planning build[2K[2K[1/1] Compiling plugin SwiftFormatPlugin[2KBuilding for debugging...
[2K[1/2] Compiling plugin SwiftFormatPlugin[2K[1/3] Compiling plugin SwiftFormatPlugin[2K[1/4] Compiling plugin SwiftFormatPlugin[2K[1/5] Compiling plugin SwiftFormatPlugin[2K[1/6] Compiling plugin SwiftFormatPlugin[2K[1/7] Compiling plugin SwiftFormatPlugin[2K[1/8] Compiling plugin SwiftFormatPlugin[2K[1/7] Compiling plugin SwiftFormatPlugin[2K[1/8] Compiling plugin SwiftFormatPlugin[2K[1/7] Compiling plugin SwiftFormatPlugin[2K[1/8] Compiling plugin SwiftFormatPlugin[2K[1/8] Write sources[2K[2/8] Write sources[2K[2/8] Write swift-version--58304C5D6DBC2206.txt[2K[3/8] Write swift-version--58304C5D6DBC2206.txt[2K[3/9] Write swift-version--58304C5D6DBC2206.txt[2K[3/10] Write swift-version--58304C5D6DBC2206.txt[2K[3/11] Write swift-version--58304C5D6DBC2206.txt[2K[3/12] Write swift-version--58304C5D6DBC2206.txt[2K[3/13] Write swift-version--58304C5D6DBC2206.txt[2K[3/14] Write swift-version--58304C5D6DBC2206.txt[2K[3/15] Write swift-version--58304C5D6DBC2206.txt[2K[4/15] Compiling AutoHotkeyMac main.swift[2K[5/15] Compiling AutoHotkeyMac resource_bundle_accessor.swift[2K[6/15] Emitting module AutoHotkeyMac[2K[7/15] Compiling AutoHotkeyMac StatusBarController.swift[2K[8/15] Compiling AutoHotkeyMac LogMessage.swift[2K[9/15] Compiling AutoHotkeyMac Configurations.swift[2K[10/15] Compiling AutoHotkeyMac AppDelegate.swift[2K[10/15] Write Objects.LinkFileList[2K[11/15] Write Objects.LinkFileList[2K[11/15] Linking AutoHotkeyMac[2K[12/15] Linking AutoHotkeyMac[2K[12/16] Linking AutoHotkeyMac[2K[12/15] Linking AutoHotkeyMac[2K[12/15] Applying AutoHotkeyMac[2K[13/15] Applying AutoHotkeyMac[2K[13/16] Applying AutoHotkeyMac[2K[13/17] Applying AutoHotkeyMac[2K[13/18] Applying AutoHotkeyMac[2K[13/19] Applying AutoHotkeyMac[2K[13/20] Applying AutoHotkeyMac[2K[13/21] Applying AutoHotkeyMac[2K[13/22] Applying AutoHotkeyMac[2K[14/22] Compiling AutoHotkeyMacTests TestHelpers.swift[2K[15/22] Compiling AutoHotkeyMacTests MainTests.swift[2K[16/22] Compiling AutoHotkeyMacTests ConfigurationsTests.swift[2K[17/22] Compiling AutoHotkeyMacTests AppDelegateTests.swift[2K[18/22] Compiling AutoHotkeyMacTests LogMessageTests.swift[2K[19/22] Emitting module AutoHotkeyMacTests[2K[20/22] Compiling AutoHotkeyMacTests StatusBarControllerTests.swift[2K[20/22] Write Objects.LinkFileList[2K[21/22] Write Objects.LinkFileList[2K[21/22] Linking AutoHotkeyMacPackageTests[2K[22/22] Linking AutoHotkeyMacPackageTests
[2KBuild complete! (5.85s)
Test Suite 'All tests' started at 2024-08-18 21:15:09.314.
Test Suite 'AutoHotkeyMacPackageTests.xctest' started at 2024-08-18 21:15:09.316.
Test Suite 'AppDelegateTests' started at 2024-08-18 21:15:09.316.
Test Case '-[AutoHotkeyMacTests.AppDelegateTests testApplicationDidFinishLaunching]' started.
Test Case '-[AutoHotkeyMacTests.AppDelegateTests testApplicationDidFinishLaunching]' passed (0.106 seconds).
Test Case '-[AutoHotkeyMacTests.AppDelegateTests testApplicationWillTerminate]' started.
Test Case '-[AutoHotkeyMacTests.AppDelegateTests testApplicationWillTerminate]' passed (0.104 seconds).
Test Suite 'AppDelegateTests' passed at 2024-08-18 21:15:09.526.
	 Executed 2 tests, with 0 failures (0 unexpected) in 0.210 (0.210) seconds
Test Suite 'ConfigurationsTests' started at 2024-08-18 21:15:09.526.
Test Case '-[AutoHotkeyMacTests.ConfigurationsTests testConfigurations]' started.
Test Case '-[AutoHotkeyMacTests.ConfigurationsTests testConfigurations]' passed (0.000 seconds).
Test Case '-[AutoHotkeyMacTests.ConfigurationsTests testConfigurationsToggle]' started.
Test Case '-[AutoHotkeyMacTests.ConfigurationsTests testConfigurationsToggle]' passed (0.000 seconds).
Test Suite 'ConfigurationsTests' passed at 2024-08-18 21:15:09.526.
	 Executed 2 tests, with 0 failures (0 unexpected) in 0.000 (0.000) seconds
Test Suite 'LogMessageTests' started at 2024-08-18 21:15:09.526.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testAppendToURL]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testAppendToURL]' passed (0.002 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testAppendToURLWithInvalidString]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testAppendToURLWithInvalidString]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogs]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogs]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogsWhenDisabled]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogsWhenDisabled]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogsWithInvalidPath]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogsWithInvalidPath]' passed (0.002 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogsWithWriteError]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testClearLogsWithWriteError]' passed (0.003 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeeded]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeeded]' passed (0.002 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeededWithExistingDirectory]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeededWithExistingDirectory]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeededWithFileExistsError]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeededWithFileExistsError]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeededWithPermissionError]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testCreateDirectoryIfNeededWithPermissionError]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testDataAppend]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testDataAppend]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testDataAppendWithEmptyData]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testDataAppendWithEmptyData]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testDataAppendWithFileHandleFailure]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testDataAppendWithFileHandleFailure]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessage]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessage]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWhenDisabled]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWhenDisabled]' passed (0.000 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWithInvalidPath]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWithInvalidPath]' passed (0.000 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWithNonUTF8String]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWithNonUTF8String]' passed (0.001 seconds).
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWithWriteError]' started.
Test Case '-[AutoHotkeyMacTests.LogMessageTests testLogMessageWithWriteError]' passed (0.001 seconds).
Test Suite 'LogMessageTests' passed at 2024-08-18 21:15:09.547.
	 Executed 18 tests, with 0 failures (0 unexpected) in 0.020 (0.021) seconds
Test Suite 'MainTests' started at 2024-08-18 21:15:09.547.
Test Case '-[AutoHotkeyMacTests.MainTests testMain]' started.
```

## 🔍 LINT OUTPUT LOG - CHECK FOR CODE STYLE ISSUES!

```log
Linting Swift files in current working directory
Linting 'StatusBarController.swift' (1/11)
Linting 'LogMessage.swift' (3/11)
Linting 'Configurations.swift' (2/11)
Linting 'AppDelegate.swift' (4/11)
Linting 'main.swift' (5/11)
Linting 'AppDelegateTests.swift' (6/11)
Linting 'MainTests.swift' (7/11)
Linting 'LogMessageTests.swift' (8/11)
Linting 'ConfigurationsTests.swift' (9/11)
Linting 'TestHelpers.swift' (10/11)
Linting 'StatusBarControllerTests.swift' (11/11)
[
  {
    "character" : 8,
    "file" : "/Users/bruno.palma/_/dev/AutoHotkeyMac/Sources/AutoHotkeyMac/main.swift",
    "line" : 28,
    "reason" : "public declarations should be documented",
    "rule_id" : "missing_docs",
    "severity" : "Warning",
    "type" : "Missing Docs"
  }
]
Done linting! Found 1 violation, 0 serious in 11 files.
```

## 📊 COVERAGE OUTPUT LOG - CHECK COVERAGE METRICS!

```log
Filename                       Regions    Missed Regions     Cover   Functions  Missed Functions  Executed       Lines      Missed Lines     Cover    Branches   Missed Branches     Cover
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AppDelegate.swift                   14[0;33m                 1[0m[0;33m    92.86%[0m           9                 1[0;33m    88.89%[0m          42[0;33m                 3[0m[0;33m    92.86%[0m           0[0;33m                 0[0m         -
Configurations.swift                 1[0;32m                 0[0m[0;32m   100.00%[0m           1                 0[0;32m   100.00%[0m          10[0;32m                 0[0m[0;32m   100.00%[0m           0[0;32m                 0[0m         -
StatusBarController.swift           22[0;31m                 6[0m[0;31m    72.73%[0m           7                 2[0;31m    71.43%[0m          60[0;33m                11[0m[0;33m    81.67%[0m           0[0;33m                 0[0m         -
Utilities/LogMessage.swift          31[0;33m                 2[0m[0;33m    93.55%[0m           9                 1[0;33m    88.89%[0m          61[0;33m                 2[0m[0;33m    96.72%[0m           0[0;33m                 0[0m         -
main.swift                           6[0;31m                 6[0m[0;31m     0.00%[0m           4                 4[0;31m     0.00%[0m          30[0;31m                30[0m[0;31m     0.00%[0m           0[0;31m                 0[0m         -
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TOTAL                               74[0;31m                15[0m[0;31m    79.73%[0m          30                 8[0;31m    73.33%[0m         203[0;31m                46[0m[0;31m    77.34%[0m           0[0;31m                 0[0m         -
```

## 📦 PACKAGE.JSON - PROJECT CONFIGURATION!

```json
{
  "scripts": {
    "share-files": "bash .cursorcontext.sh",
    "test-and-share": "npm run test"
  }
}```

## 🔍 SOURCE AND TEST FILES - REVIEW CODE!

### 📄 FILE: [example.js](src/example.js)

```js
/**
 * Adds two numbers together.
 * @param {number} a - The first number.
 * @param {number} b - The second number.
 * @returns {number} The sum of a and b.
 */
function add(a, b) {
  return a + b;
}

/**
 * Greets a person by name.
 * @param {string} name - The name of the person to greet.
 * @returns {string} A greeting message.
 */
function greet(name) {
  return `Hello, ${name}!`;
}

module.exports = {
  add,
  greet,
};
```

### 📄 FILE: [example.test.js](test/example.test.js)

```js
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
```

