# Moodpeak [V2]
re-work of Moodpeak [base-branch](https://github.com/HANCORE-linux/omarchy-moodpeak-theme/tree/moodpeak-v1) 

I have added specific window rules to **disable opacity and dimming effects** for all  applications.

**The Goal:** I wanted to create a solid visual experience with a total focus on the terminal colors.

<b>**Customization:** If you prefer transparency or dimming, simply remove the **windowrule**:</b>
- `windowrule = match:class .*, opacity 1.0 override 1.0 override, no_dim on`
- section in:
`~/.config/omarchy/themes/moodpeak/hyprland.conf
`
for this theme.

# Installation Theme

To install this theme, simply use the omarchy-theme-install command:

```bash
omarchy-theme-install https://github.com/HANCORE-linux/omarchy-moodpeak-theme.git
```

# Screenshots
<img width="2560" height="1440" alt="preview" src="https://github.com/user-attachments/assets/b40ea2e3-568a-408e-948a-fbb88395a2bf" />

#### Waybar-Theme
[Link](https://github.com/HANCORE-linux/waybar-themes)

#### Theme-Hook-Manager
[Link](https://github.com/OldJobobo/theme-hook-plugin-manager)

## Acknowledgments
This theme was created using [Aether](https://github.com/bjarneo/aether) by [@bjarneo](https://github.com/bjarneo).

### License
MIT
