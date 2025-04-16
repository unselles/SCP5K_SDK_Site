---
sidebar_position: 5
---

# Blueprint Script

:::danger
**Section heavily WIP!!!**
:::

### Prerequisites

* **[Unreal Engine 4.27](https://www.unrealengine.com/en-US/download)**
* **[UE4SS](https://github.com/UE4SS-RE/RE-UE4SS)** optional for loading mod actors.
* **[SCP5K SDK](../../sdk/sdksetup/index.md)** optional for accessing the game's functions.

:::warning
This section is advanced, it is recommended to have basic knowledge of **Unreal Engine** and **Blueprint Script.**
:::

### Creating the Mod Actor Blueprint

1. Find a blueprint in the game files to replace or use UE4SS to load a mod actor, for this instance, we'll be using the mod actor method.
2. Create a folder named Mods inside the Content folder and create another folder with your mod files. For example, `Content/Mods/ModTest`
3. Right-click the Content Browser and add a Blueprint class of the Actor type, name it the same as your mod folder.
4. Open the blueprint and create a custom event, call it `PostBeginPlay`, we'll use this to execute our code.

### Creating a Basic Code Mod

1. 

### Creating a Mod Package

1. Follow the [mod packaging method](../../basics/creatingpackages/index.md)
2. Name the package same as your mod actor, so in this instance `ModTest.pak`
3. Your mod should appear working in the game!