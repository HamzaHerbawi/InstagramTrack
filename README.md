# InstagramTrack - Instagram profile picture tracker.

A tool to track Instagram profile pictures and send SMS notifications if they change using AWS SNS (Simple Notification Service).

<br>
   <p align="center">
<img width="60%" height="70%" src="https://drive.usercontent.google.com/download?id=1HZc842tJWo5lsPksW63F4KqGIfFtOB6e&export=view"/>
</a>
</p>
<br>

<p align="center">
  <a href="#requirements">Requirements</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#installation">Installation</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#usage">Usage</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#notes">Notes</a>
</p>
<br>

## Requirements
1) Create an appropriate [AWS user](https://console.aws.amazon.com/iam/). with AmazonSNSFullAccess permission

<p align="center">
<img src="https://github.com/HamzaHerbawi/InstagramTrack/blob/master/images/1.png"/>
</a>
</p>

2) Create AWS **Access key ID** and **Secret access key**

   <p align="center">
<img src="https://github.com/HamzaHerbawi/InstagramTrack/blob/master/images/2.png"/>
</a>
</p>

3) [Install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and configure AWS CLI
  
  ```bash
  # Install curl and grep
  $ sudo pacman -S curl grep # Arch Linux user

  # Install the awscli
  $ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install
  
  # Configure the AWS CLI
  $ aws configure
  AWS Access  Key ID [None]: AKXXXXXXXXXXXXXX
  AWS Secret Access Key [None]: hMXXXXXXXXXXXXXXXXXXXXX
  Default region name [None]: us-east-1
  Default output format [None]: json
  ```
## Installation

```bash
# clone the repo
$ git clone https://github.com/HamzaHerbawi/InstagramTrack.git

# change the working directory to cd InstagramTrack
$ cd InstagramTrack/InstagramTrack

# make script executable
$ chmod +x instatrack.sh
```
## Usage

```console
$ ./instatrach.sh UserName_Instagram your_PhoneNumber
  Enter Verification Code
  xxxxxx
```
   <p>
<img width="30%" height="70%" src="https://github.com/HamzaHerbawi/InstagramTrack/blob/master/images/3.jpg"/>
</a>
</p>

And that's it 🎉🎉

### Now, if this user changes their profile picture, you will receive an SMS notification `username changed instagram picture`.
- Run this tool on any server you own, exercising caution to avoid server crashes.
  
## Notes
