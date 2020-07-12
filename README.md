# Lecture Notes
## Lecture 3
- Make EmojiMemoryGame an observableObject, add published to model

## Lecture 4
### Demo
- Create Grid view that takes Item. To make it able to be manipuated by ForEach, Item should **conform to Identifiable**.
  - Use Group (viewBuilder) when index is nil
- Create GridLayout.swift
- Create Array+Identifiable.swift to extend array.
  - Find the first index matching the given item
  - Fix bogus by using optional
- Create Array+Only.swift to return the only element in an array
- Modify EmojiMemoryGame.swift to hide matched cards
- Modify MemoryGame.swift
  - Create **computed property indexOfOneAndOnlyFaceUpCard**
  - The logic when a card is chosen

### Slides
- Enum is a value type
  - enums can have associated data
  - enums can have methods but **no stored properties** because enums are discrete (wouldn't have data applied to all of them)
- Optional

```swift
enum Optional<T> {
    case none
    case some(<T>)
}
```

