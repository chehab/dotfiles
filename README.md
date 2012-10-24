## Installation

### Using Git and the bootstrap script

Clone the repository wherever you want. Then run bootstrap script which will symlink the files to your home folder.

```bash
git clone https://github.com/AbuTariq/dotfiles.git && cd dotfiles && ./bootstrap.sh
```
### Git-free install
To install these dotfiles without Git

```bash
mkdir dotfiles && cd dotfiles && curl -#L https://github.com/AbuTariq/dotfiles/tarball/master | tar -xzv --strip-components 1 && ./bootstrap.sh
```