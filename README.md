# Black Codher setup guide

This guide is to help you setup the following required software during the Black Codher bootcamp.

1. [Windows Terminal](#windows-terminal) **THIS IS FOR WINDOWS USERS ONLY**
1. [Git](#git)
1. [Node](#node)
1. [Visual Studio Code](#visual-studio-code)
   - [Extensions](#extensions)
1. [Slack](#slack)
1. [Google Chrome](#google-chrome)
   - [Extensions](#chrome-extensions)
1. [Configuring a Default Terminal in VS Code](#configuring-a-default-terminal-in-vs-code) **THIS IS FOR WINDOWS USERS ONLY**

**If you haven't already created a [GitHub](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home) account, now is the time to do it.**

---

## Windows Terminal

The Windows Terminal is a modern, fast, efficient, powerful, and productive terminal application. You will be using it to write commands to install software for your projects and run commands to power the applications you will be creating.

### How to install Windows Terminal

Please follow the instructions that are appropriate for your version of Windows.

#### Windows 10
[Click on this link](https://www.microsoft.com/en-gb/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab). Once you are on the page click **Get**, then click Install.
                                                                                              
Alternatively, open up the Microsoft Store and search for *Windows Terminal*. Proceed to install this app.

Once the installation is finished you will need to to create a Windows Subsystem for Linux. Below are the steps to follow. Optionally you can view the more detailed [steps here](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-2---check-requirements-for-running-wsl-2) .

- Install Windows Subsystem for Linux on Windows 10:
   -  Enable WSL:
      - Open up Windows Powershell as an Administrator(right-click the start menu and select 'Windows Powershell(Admin)'
      - Paste the following command and run

         ```
         dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
         ```
         
      - Restart your computer
      - Skip to installing linux distribution if system is not compatible with WSL2, WSL1 will be used instead. 
        *Hint*: Check the system requirements for this [here](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-2---check-requirements-for-running-wsl-2)
   -  Enable 'Virtual Machine Platform':
      - Open up Windows Powershell as an Administrator(right-click the start menu and select 'Windows Powershell(Admin)'
      - Paste the following command and run
      
        ```
        dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
        ```
        
      - Restart your computer to complete the installation.
   -  Download the Linux Kernel Update Package [here](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi). Double-click to run. Select yes when prompted for admin permissions.
   -  Set WSL2 as default
      - Open up Windows Powershell as an Administrator(right-click the start menu and select *'Windows Powershell(Admin)'*
      - Paste the following command and run 
      
        ```
        wsl --set-default-version 2
        ```
        
   -  Install a Linux distribution:
      - Install Ubuntu 20.04 LTS from the Microsoft store. You can search for it or use this link [here](https://www.microsoft.com/store/productId/9N6SVWS3RX71)
      - Launch it from from the start menu. Tip: search `Ubuntu` in the start menu.
      - You will be prompted to set a user account and password for the distribution.
      - Once the setup has been complete, close the window.
- Configure Windows Terminal to run Ubuntu by default:
   - Open up Windows Termnial
   - Click on the down arrow the top bar; click on settings
   - In the Startup view, click the 'Default Profile' drop-down and select *Ubuntu-20.04*
   - Click Save at the bottom right of the window and restart your terminal

#### Windows 8

If you are currently using Windows 8, we recommend you upgrade to Windows 10. To upgrade you must have the following minimum system requirements:

- Latest OS: Make sure you're running the latest version—either Windows 7 SP1 or Windows 8.1 Update.
- Processor: 1 gigahertz (GHz) or faster processor or SoC.
- RAM: 1 gigabyte (GB) for 32-bit or 2 GB for 64-bit.
- Hard disk space: 16 GB for 32-bit OS or 20 GB for 64-bit OS.

To download and install Windows 10, [click here](https://www.microsoft.com/eb-gb/software-download/windows10) and follow the installer instructions.

If you are unable to upgrade to Windows 10 [email us](mailto:tech@blackcodher.com?subject=Windows%208%20upgrade%20issues) straight away and do not proceed with the rest of this guide.

---

## Git

Git is a version control system and will let you:

- Manage your code changes
- Revert to older copies

### Windows installation

The instructions below mention **Git Bash** and **Windows command prompt**, you shouldn't use either of these and use the [windows terminal](#windows-terminal) you installed above to install git.

[Follow the instructions](https://github.com/git-guides/install-git#install-git-on-windows).

### Mac installation

[Follow the instructions](https://github.com/git-guides/install-git#install-git-on-mac).

---

## Node

You will need to install Node not only for the NodeJS unit, but also for React. By installing Node you can use its a [package manager](https://en.wikipedia.org/wiki/Package_manager) (Node Package Manager or `npm`) to install other software that you will use in your projects later in the course.

### How to install node

[Click on this link](https://nodejs.org/en/download/) and choose the installer appropriate for your computer (windows or mac). Follow the instructions the installer gives.

---

## Visual Studio Code

Visual Studio Code (VS code) is a source code editor made by Microsoft. It will enable you to write code and can identify errors in the code, and make suggestions.

You will use it to write all your code.

### How to install VS Code

[Click on this link](https://code.visualstudio.com/download) and choose the installer appropriate for your computer (windows or mac). Follow the instructions the installer gives.

### Extensions

There are many extensions in VS Code to can improve your productivity, add some fun into your workspace, and generally aid how you work. Below are some of the key extensions that will help during the course and beyond. If you find other useful extensions don't forget to share with everyone.

[You can install all extensions directly from inside VS Code](https://code.visualstudio.com/docs/editor/extension-marketplace#_browse-for-extensions).

#### [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

Prettier is an opinionated code formatter. It enforces a consistent style by parsing your code and re-printing it with its own rules that take the maximum line length into account, wrapping code when necessary. In plain English it formats your code to make it consistent, easy to read and well...pretty.

Once prettier has been installed there is some extra configuration to do. [This video](https://www.youtube.com/watch?v=zd_aDbwr4pY) will guide you on how to make prettier format your code eveytime you save a file.

#### [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

Launches a development local Server with live reload feature for static & dynamic pages. This will be useful during the JavaScript unit.

#### [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)

Visual Studio Live Share enables you to collaboratively edit and debug with others in real time.

#### [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2)

This extension allows matching brackets to be identified with colours.

#### [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)

Automatically renames paired HTML tags.

---

### Configuring a Default Terminal in VS Code(Windows Users Only)

To make sure the terminal available directly inside VS Code is the terminal you installed and configured in the [windows terminal step](#windows-terminal), you will need to complete the following steps:

- Open Visual Studio Code
- Click on the Tab labelled *Terminal* at the top of the VS code window
- Click on *New Terminal*. This should open up a pane at the bottom part of VS code.

![Terminal Shot](terminal-shot.png) 

- In the bottom window, click the drop-down arrow right beside the plus sign
- Click *Select Default Profile*. A dialog box displays at the top bar.

![default-profile](default-profile-shot.png)

- Select the option that says *Ubuntu-20.04*

![Ubuntu-shot](ubuntu-shot.png)

-  Finally restart VS code

---

## Slack

Slack is a chat and collaboration tool. You will use it to:

- Keep in touch with each other
- Ask questions
- Contact mentors, instructors and teaching assistants
- Build a community

### How to install Slack

[Windows](https://slack.com/intl/en-gb/help/articles/209038037-Download-Slack-for-Windows) - follow the instructions.

[Mac](https://slack.com/intl/en-gb/help/articles/207677868-Download-Slack-for-Mac) - follow the instructions.

---

## Google Chrome

The developer tools available in Google Chrome helps with all different scenarios that you will get into during the bootcamp. This is our browser of choice for the bootcamp.

### How to install Chrome

[Click on this link](https://support.google.com/chrome/answer/95346?hl=en-GB&co=GENIE.Platform%3DDesktop) and choose the installer appropriate for your computer (windows or mac). Follow the instructions the installer gives.

### Chrome Extensions

Below we have listed some Chrome extensions that will enhance make your development experience. If you find other useful extensions don't forget to share with everyone.

#### [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)

Adds React debugging tools to the Chrome Developer Tools.

#### [Debug CSS](https://chrome.google.com/webstore/detail/debug-css/igiofjnckcagmjgdoaakafngegecjnkj)

Adds an outline to all elements on the page to show the culprit element which is changing desired layout.
