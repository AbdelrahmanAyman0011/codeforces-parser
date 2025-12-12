# 🚀 Codeforces Parser (cf)

A lightweight **Codeforces CLI tool** to:

- fetch sample testcases  
- generate a solution template (`sol.cpp`)  
- test your solution with diffs  
- parse entire contests (A → Z)  : u can Ctrl + c when problems completed [range not handled]
- bypass Cloudflare automatically (<font color="red">****no login required****</font>)


Perfect for competitive programming and fast problem-solving workflows.

---

## 🔧 Features

✔ Fetch sample tests for any problem  
✔ Parse an entire contest automatically  
✔ Auto-generate `sol.cpp` template inside each problem folder  
✔ Local testing with real diff output  
✔ Works with C++ & Python  
✔ Works even when Codeforces blocks your region (via proxy)  
✔ Zero login, zero cookies, zero dependencies besides Python  

---

## 📦 Installation

Clone the repo:

```bash
git clone https://github.com/YOUR_USERNAME/codeforces-parser
cd codeforces-parser
```

Run the installer:

```bash
sudo ./install.sh
```

Verify installation:

```bash
cf --help
```

---

## 🧠 Usage

### 📥 Parse a specific problem

```bash
cf parse 231 A
```

Creates:

```
231/A/
  in0.txt
  ans0.txt
  sol.cpp   <- your solution template
```

---

### 📦 Parse an entire contest (A → Z)

```bash
cf parse 231
```

Automatically attempts:

```
A, B, C, D, ... Z
```

and stops when no more problems exist.

---

### ✏️ Edit your solution

```bash
cd 231/A
vim sol.cpp
```

Or use VSCode:

```bash
code sol.cpp
```

---

### 🧪 Test your solution

```bash
cf test sol.cpp
```

Output example:

```
🔨 Compiling...
📂 Using sample folder: 231/A

--- Test 0 ---
✔ OK

--- Test 1 ---
❌ WRONG

Expected:
YES
My output:
NO

--- DIFF ---
- YES
+ NO
```

---

## 📂 Directory Structure

```
codeforces-parser/
 ├── cf                # main CLI tool
 ├── install.sh        # installer
 ├── 231/
 │    └── A/
 │         ├── in0.txt
 │         ├── ans0.txt
 │         └── sol.cpp
 └── README.md
```

---

## 🛡 Cloudflare Safe

Many regions (Egypt, India, UAE…) get blocked by Codeforces when using scripts.

This tool automatically uses a **safe HTML proxy** so parsing works anywhere without VPN.

---

## 🧩 Supported languages

- **C++17** (`sol.cpp`)
---

## 🛣 Roadmap

- [ ] Colored diff output  
- [ ] Java template support  
- [ ] Automatic URL parsing (`cf parse <url>`)  
- [ ] Problem statement downloader  
- [ ] VS Code integration  
- [ ] Online judge API mode  

---

## ⭐ If you find this useful, give the repo a star!
