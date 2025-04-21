# CLoakshot
A no-nonsense metadata scrubber for JPEG and PNG images. Automatically purges identifying data and saves sanitized copies for anonymous sharing via Tor or other secure channels.
# Cloakshot

Cloakshot is a simple Bash script designed to clean and scrub metadata from image files. It's especially useful for removing sensitive metadata (e.g., EXIF data) from images before uploading them to privacy-focused networks like Tor or for anyone looking to protect their privacy.

## Features

- Strips metadata from images (JPEG, PNG, etc.)
- Supports `.jpg`, `.jpeg`, `.JPG`, `.JPEG`, `.png`, `.PNG` file formats
- Saves cleaned images to a user-specified output directory with timestamp-based filenames
- Ensures proper file permissions for cleaned images

## Requirements

- [ImageMagick](https://imagemagick.org/) (for the `convert` command)

To install ImageMagick on Debian-based systems, run:
```bash
sudo apt install imagemagick

Usage

    Clone this repository:

git clone https://github.com/yourusername/Cloakshot.git

Navigate to the project directory:

cd Cloakshot

Run the script:

    ./tor_image_clean.sh /path/to/images/

        Replace /path/to/images/ with the directory containing the images you want to clean.

        The cleaned images will be saved to ~/tor_uploads by default.

    You can change the output directory by modifying the OUTDIR variable in the script.

Example

./tor_image_clean.sh /home/user/images/

This will clean all supported images in the /home/user/images/ directory and save the cleaned versions to ~/tor_uploads.
License

This project is licensed under the MIT License - see the LICENSE file for details.
Contributing

    Fork the repository

    Create a new branch (git checkout -b feature/your-feature)

    Commit your changes (git commit -am 'Add your feature')

    Push to the branch (git push origin feature/your-feature)

    Open a pull request

Issues

If you encounter any issues, please open an issue on the GitHub repository, and I’ll address it as soon as possible.

Made with 💻 by Bounty-Stack 
