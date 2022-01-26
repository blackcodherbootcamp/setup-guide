# Fix React Performance Issues

For all Windows users, we have a final solution to the performance issues experienced when initialising and editing React apps. Rather than running your commands in Windows to access files hosted in Windows, you'll be moving your course directory to the virtual filesystem, where your terminal commands will also run at native speed. 

### Watch the [video tutorial](https://youtu.be/vn7LnC8u4-Y) to apply this solution.

**Prerequisite**: Ensure your react projects are all in one central folder; ideally the folder should be named 'blackcodher'

1. Confirm npm is installed locally: `which npm` The returned path should start with */usr/bin* or possibly */home/[WSL username]/.nvm* — in any case, it shouldn't start with */mnt/c*
2. Ensure you're in your Linux home directory: `cd ~`
3. Copy files from Windows to linux: `rsync -azh --info=progress2 /mnt/c/[path to blackcodher folder] .` e.g. `rsync -azh --info=progress2 /mnt/c/Users/gary/Documents/blackcodher .`
4. Open up VS Code: Run `code .`
5. Esnure the 'Remote-WSL' extension is installed in VS Code or install it using this link: <https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl>

Once you've confirmed your files transferred successfully and your projects are accessible, you can delete the blackcodher directory from your Windows user directory
Any questions or issues, just post a reply in the thread. 

**Note:** *To access your files from the Windows File Explorer, navigate to \\WSL$\Ubuntu-[Ubuntu version]\home\[WSL username]: \\WSL$\Ubuntu-20.04\home\hael You may find it helpful to pin this directory for easy access.*