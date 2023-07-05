#!/bin/bash
#

LISTONE="/dir1/fileone.ssml,/dir2/filetwo.ssml"
LISTTWO="/dir2/filetwo.mov,/dir3/filethree.mov"

IFS=, read -ra sbi_arr <<<"$LISTONE" # convert SBI string to an array

arrVar=()
for value in "${sbi_arr[@]}"
do
     arrVar+=("`echo $value | sed -e 's/\.ssml$/.mov/'`")
done

for value in "${arrVar[@]}"
do
     echo $value
done

exit

IFS=, read -ra mem_arr <<<"$LISTTWO" # convert MEM string to an array
combined=( "${sbi_arr[@]}" "${mem_arr[@]}" )
IFS="," read -r -a combined <<< "$(tr ' ' '\n' <<< "${combined[@]}" | sort -u | tr '\n' ',')"

printf '%s\n' "${combined[@]}"
exit

out=                             # initialize output variable
for idx in "${!sbi_arr[@]}"; do  # iterate by indices
  out+="${sbi_arr[$idx]},${mem_arr[$idx]}," # append to output
done
out=${out%,}                     # strip trailing comma from output

echo "Output is: $out"

