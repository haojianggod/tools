mkdir -p src/main/java
thrift_files=`find idl/ -name *.thrift`

for file in $thrift_files;do
    ./tool/thrift -out src/main/java --gen java $file
done;

sbt publish

#./tool/thrift -out src/main/java --gen java idl/common/common.thrift
#./tool/thrift -out src/main/java --gen java idl/compute_wmd_wcd.thrift
#./tool/thrift -out src/main/java --gen java idl/entry.thrift
#./tool/thrift -out src/main/java --gen java idl/lsh.thrift
#./tool/thrift -out src/main/java --gen java idl/query_item_vector.thrift
#./tool/thrift -out src/main/java --gen java idl/query_vector.thrift
#./tool/thrift -out src/main/java --gen java idl/vec_store.thrift
#sbt publish
