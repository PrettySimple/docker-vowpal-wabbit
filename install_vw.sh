apk add --no-cache --virtual build-deps build-base git boost-dev zlib-dev

# For some reason, the Makefile was deleted by the release commit.
# Revert to the commit before it for an easier build of vowpal-wabbit
# (without executing autogen.sh and its dependencies).
git clone --depth 2 --branch 8.6.1 --single-branch git://github.com/JohnLangford/vowpal_wabbit.git /opt/vowpal_wabbit/
cd /opt/vowpal_wabbit/
git checkout HEAD~1

make
make install

cd /
apk del build-deps
rm -rf /var/cache/apk/* /opt/vowpal_wabbit/

apk --no-cache add --virtual run-deps boost-program_options zlib libstdc++
