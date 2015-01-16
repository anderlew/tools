src_dir=/home/bing/Myfiles/1.WorkSources/1.Lewa/mtk6589_b2c_v5/out/target/product/w1231_jb2/system/framework/
dst_dir=/system/framework/
bak_dir="."
update_files="framework.jar secondary-framework.jar lewa-framework.jar android.policy.jar"
update_files+=" lewa-res.apk framework-res.apk"

function backup()
{
    echo "backup: " $1
    adb pull $dst_dir/$1 $bak_dir
}

function update()
{
    echo "update: " $1
    adb push $src_dir/$1 $dst_dir
}

adb remount
for file in $update_files
do
    #backup $file
    update $file
done

adb shell sync
adb shell reboot

