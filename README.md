# Momo Sentinel

*You only need this if you are running a masternode and getting WATCHDOG_EXPIRED*

Please test it and consider it to be a **beta**, something might fail (I don't have momocash in Windows).

Pick an executable (either win/lin) from https://github.com/momopay/sentinel/releases
Just for reference, sentinel-win64 virustotal (3/67): *******

Use at your own risk, it has been compiled exactly as the Github repo says

## Before running it

**1.** Make sure you are running the right version

**2.** Close your wallet

**3.** Go to momocore folder and delete "mncache.dat" and "mnpayments.dat"

**4.** Make sure your "momo.conf" contains, at least, the following data:
rpcuser=someuser
rpcpassword=somepass
server=1
rpcport=6615
rpcconnect=127.0.0.1

Try to make rcpuser and rpcpassword hard to guess, you won't need to remember/use them for anything else, so feel free to smash the keyboard

**5.** Open wallet. Resync the whole wallet, from the menu "Tools" > "Wallet Repair" > "Rebuild Index"

**6.** Make sure the wallet is running and completely synced before continuing

## How to

To make it point to your momo.conf, you have three options:

**A)** Create a file **sentinel.conf** in the same folder as the EXE with the following content:
momo_conf=C:\path\to\momo.conf

Start sentinel-win64.exe

**B)** From a console, execute the EXE by passing arguments 
sentinel-win64.exe --config=C:\path\to\momo.conf

**C)** By creating a shortcut

1) Right click the sentinel-win64.exe, "Create Shortcut". 
2) Right click the shortcut, Properties
3) Edit Target and, at the end, add a SPACE and then "--config=C:\path\to\momo.conf" INCLUDING the quotes "

Double click the shortcut to start sentinel.

## When everything fails
If you have followed all the steps and still get WATCHDOG_EXPIRED when issuing "masternode status":

**1.** Close the wallet

**2.** Delete all files inside "momocashconf" except for "wallet.dat" and "momo.conf".
**Please make sure you don't delete wallet.dat! Backup it, for real, that's your coins!**

**3.** Restart wallet, open sentinel-win64.exe, and let it sync!

### Feedback
If it doesn't work, create an *Issue* with detailed explanations


## Usage

Pick the appropiate file from [https://github.com/momopay/sentinel/releases](Releases)

Open file `sentinel.conf` and change `momo_conf` to point to your momocash configuration file

Run `sentinel.exe` and keep it open, that's all.

You might pass arguments to `sentinel.exe`, for example `sentinel.exe --config="C:\path\to\momo.conf"`


# Building

pip install -r requirements.txt

Install pyinstaller `pip install pyinstaller`
WIN64 `pyinstaller --onefile --paths=lib/;Lib/;libs/ main.py`
ELSE
Generate output EXE/ELF: `pyinstaller --onefile --paths=lib/ main.py`
