## 🧭 Eager Singleton - Session Manager
- When the singleton instance is **always needed** during app lifecycle.
- Useful when the instance is **lightweight**, and its early creation does not impact performance.
![Eager Singleton Diagram](./uml_eager_singleton_pattern.png)
---
## 🧭 Lazy Singleton - Session Manager
- When the singleton instance is **only needed conditionally** or late in the app lifecycle.
- Helps **save resources** by delaying initialization until the first use.
- In **multi-threaded languages like Java**, we must add synchronization or use patterns like **double-checked locking** or the **`volatile` keyword** to
 ensure thread safety during lazy initialization.
![Lazy Singleton Diagram](./uml_lazy_singleton_pattern.png)
