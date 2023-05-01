# caniuse-zsh

This Zsh plugin allows you to quickly search the [caniuse.com](https://caniuse.com/) website to check if a web development-related (HTML/CSS/JS) feature is supported by browsers.

## Installation

To install this plugin, you must have [Oh My Zsh](https://ohmyz.sh/) installed. Once you have Oh My Zsh installed, you can install this plugin by following these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/caniuse-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/caniuse
   ```

2. Activate the plugin by adding caniuse to plugins list or by adding the following line in your `.zshrc` file

   `plugins+=(caniuse)`

Inspried by Michael Wales' [Plugin](https://github.com/walesmd/caniuse.plugin.zsh/blob/master/caniuse.plugin.zsh)

3. Restart your terminal. Or source the file with this command `source ~/.zshrc`

## Usage

To launch the caniuse website in your default browser, simply type: `caniuse` or `cu` in the terminal.

To search for a specific feature, pass the feature name as an argument:

`caniuse <feature>`

For example: &nbsp;`$ caniuse gap`

You can search for multiple features at once by passing multiple arguments:

`caniuse <feature1> <feature2> <feature3>`

For example: &nbsp;`$ caniuse gap avif webp`

This will open three different tabs with each of the features.

If you want to search for a feature that has multiple words in the name, enclose the name in quotes or replace the spaces with hyphens:

`caniuse "<feature name>"` &nbsp; or &nbsp; `caniuse <feature-name>"`

For example: &nbsp;`$ caniuse "css container queries style"`

Note: You can use the alias `cu` instead of typing `caniuse` in the terminal.

For example: &nbsp;`$ cu border-radius`

You can change the alias in the caniuse.plugin.zsh file by typing this in the terminal:

```zsh
nano ~/.oh-my-zsh/custom/plugins/caniuse/caniuse.plugin.zsh
```

## Todo

- Provide data/results directly in the command line.

## Contributing

Feel free to open an issue describing your feature suggestion or just send a pull request directly!

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
