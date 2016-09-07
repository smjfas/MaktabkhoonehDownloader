# MaktabkhoonehDownloader
this script help you download your favorite videos from maktabkhooneh.org


## Usage for one Video:
  ./maktabDownloader.sh [course page address] [hq/lq] [Location to Save ] [number of video]
  
  
##Usage for Multiply Videos:
    ./maktabDownloader.sh [course page address] [hq/lq] [Location to Save ] [first Video Number] [Last Video Number]
   
   
###Example:
    ./maktabDownloader.sh http://maktabkhooneh.org/course/irani-mnarmafzar hq /home/user/Data 1 5



#### hq/lq
choose hq for high quality video downloads


choose lq for low quality video downloads
#### where to save
where do you want the program save videos in your computer
#### number of video/number of first video
if you just want to download a single session just type the session number like 3 or 4 ...


but if you want to download serie of sessions just type the index of first session in the serie, for example for downloading sessions 1 to 10 you have to type 10.
#### optional part
if you want to download a single session you can ignore 5th argument but if you want to download a serie of videos you have to use it, for example if you want to download from session 1 to 10 type 10 for the last argument.
