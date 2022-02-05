# tp2_li_lesi_ipca

## Requirments:

**Script only work on linux based operating systems [Debian (and based), Arch (and based), FreeBSD, Red Hat Enterprise (and based)]**

    You must have the following packages on your system:
        - jq (can be installed by default with the OS)
        - curl (can be installed by default with the OS)
        - sed (can be installed by default with the OS)
        
**If any of those packges is missing please run:**

### Debian, Ubuntu, ... :

``` bash
    sudo apt install curl jq
```

### Red Hat Enterprise, Fedora 34, ... :

``` bash
    sudo yum install curl jq
```

### Arch, Manjaro, ... :

``` bash
    sudo pacman -S curl jq
```

The script can be executed from any directory, be aware that:
    - videotec folder and subfolders will be created at ~/Documents
    - the compress and decompress functions will output to ~/Documents

## Execution

### Normal operation:

```bash
    ./videotec_manager.sh -e
```
### Compress:

```bash
    ./videotec_manager.sh -c
```

### Decompress: 

```bash
    ./videotec_manager.sh -d
```

### Remove generated videotec:
    
``` bash
    ./videotec_manager.sh -r
```

### Print about:
    
``` bash
    ./videotec_manager.sh -a
```

### Print help menu:
    
``` bash
    ./videotec_manager.sh -h
```

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
