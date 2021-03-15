#!/usr/bin/env python

# Source: https://docs.syncthing.net/users/versioning.html#external-file-versioning

# Lets assume I have a folder "default" in ~/Sync, and that within that folder there is a file docs/letter.txt that is being replaced or deleted. The script will be called as if I ran this from the command line:

# $ /Users/jb/bin/syncthing-archive.sh /Users/jb/Sync docs/letter.txt

# Local test:
# # ~/bin/syncthing-archive.py /share/android/oneplus2/Camera OpenCamera/IMG_20201011_144705.jpg
# Expected:
# # mv /share/android/oneplus2/Camera/OpenCamera/IMG_20201011_144705.jpg /share/android/oneplus2/Camera-archive/OpenCamera/IMG_20201011_144705.jpg

# On syncthing do not forget to quote the arguments:
# /share/homes/admin/bin/syncthing-archive.py "%FOLDER_PATH%" "%FILE_PATH%"

import sys
import os

if __name__ == "__main__":
    folder_path = sys.argv[1]
    file_path = sys.argv[2]
    print(folder_path)
    print(file_path)
    archive_path = folder_path + '-archive'
    org_filename = os.path.join(folder_path, file_path)
    dst_filename = os.path.join(archive_path, file_path)
    ensure_root = os.path.dirname(dst_filename)
    print(ensure_root)
    try:
        print('create folder: {}'.format(archive_path))
        os.makedirs(ensure_root)
    except OSError as e:
        if 'file exists' not in e.strerror.lower():
            print(e)
            raise(e)

    try:
        print('move file: {} TO {}'.format(org_filename, dst_filename))
        os.rename(org_filename, dst_filename)
    except Exception as e:
        print(e)
        raise(e)
