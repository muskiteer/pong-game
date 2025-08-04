# Pong Game 🏓

A classic Pong game implementation built with Godot 4.4. This is a two-player game where players control paddles to bounce a ball back and forth, trying to score points against their opponent.

## 🎮 Features

- **Two-player local gameplay**
- **Smooth ball physics** with realistic bouncing
- **Score tracking** for both players
- **Visual ball rotation** for enhanced gameplay experience
- **Paddle movement constraints** to keep them within screen bounds
- **Anti-stuck mechanism** to prevent ball from getting trapped
- **Randomized ball direction** after scoring

## 🎯 How to Play

### Controls
- **Left Player (Player 1):**
  - `W` - Move paddle up
  - `S` - Move paddle down

- **Right Player (Player 2):**
  - `↑` Arrow Key - Move paddle up
  - `↓` Arrow Key - Move paddle down

### Objective
- Use your paddle to bounce the ball back to your opponent
- Score points when the ball passes your opponent's paddle
- The game continues indefinitely - play to your desired score!

## 🚀 Getting Started

### Prerequisites
- [Godot Engine 4.4+](https://godotengine.org/download)

### Installation & Running

1. **Clone the repository:**
   ```bash
   git clone https://github.com/muskiteer/pong-game.git
   cd pong-game
   ```

2. **Open in Godot:**
   - Launch Godot Engine
   - Click "Import" and select the `project.godot` file
   - Click "Import & Edit"

3. **Run the game:**
   - Press `F5` or click the "Play" button
   - Select `main.tscn` as the main scene when prompted

## 🏗️ Project Structure

```
📁 pong/
├── 📄 project.godot          # Godot project configuration
├── 📄 main.tscn              # Main game scene
├── 📄 icon.svg               # Project icon
├── 📁 assets/                # Game assets
│   ├── 🖼️ ball.png           # Ball sprite
│   ├── 🖼️ racket.png         # Paddle sprite
│   └── 🖼️ images.steamusercontent.png  # Background
└── 📁 scripts/               # Game scripts
    ├── 📄 ball.gd            # Ball physics and behavior
    ├── 📄 paddles_left.gd    # Left paddle controller
    ├── 📄 paddle_right.gd    # Right paddle controller
    └── 📄 score.gd           # Score management
```

## 🔧 Technical Details

### Game Settings
- **Resolution:** 800x600 pixels
- **Ball Speed:** 535 pixels/second
- **Paddle Speed:** 500 pixels/second
- **Ball Rotation Speed:** 10 rad/second

### Key Features Implementation
- **Physics:** Uses Godot's `CharacterBody2D` for ball movement with `move_and_collide()`
- **Collision Detection:** Proper bounce physics with normal vectors
- **Randomness:** Slight random factors to prevent predictable bounces
- **Score System:** Automatic scoring when ball hits left/right walls
- **Reset Mechanism:** 1-second pause after each score with smooth ball reset

## 🎨 Assets

The game includes custom sprites for:
- Ball (circular sprite with visual rotation)
- Paddles (rectangular racket sprites)
- Background (court-style background image)

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests
- Improve documentation

### Development Setup
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🎮 Screenshots

*Add screenshots of your game in action here*

## 🚀 Future Enhancements

- [ ] AI opponent for single-player mode
- [ ] Power-ups and special effects
- [ ] Sound effects and background music
- [ ] Different difficulty levels
- [ ] Tournament mode
- [ ] Online multiplayer

## 📧 Contact

Feel free to reach out if you have any questions or suggestions!

---

**Enjoy playing Pong! 🏓**