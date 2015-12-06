echo "What do you want to call this module? (some-node-module)"
read DEST

VERSION=1.2.0
URL="https://github.com/logikaljay/scaffold-node-module/archive/v${VERSION}.zip"
SRC="scaffold-node-module-${VERSION}"

echo "Downloading ${URL}"
curl -L -s ${URL} \
     -o tmp-module.zip \
     && echo "Extracting." \
     && unzip -qq tmp-module.zip \
     && echo "Cleaning up." \
     && mv ${SRC} ${DEST} \
     && rm -f "tmp-module.zip" \
     && cd ${DEST} \
     && rm -f init.sh \
     && echo "Running 'npm install'" \
     && sed -i '' "s/https:\/\/github.com\/logikaljay\/scaffold-node-module.git//g" package.json \
     && sed -i '' "s/scaffold-node-module/${DEST}/g" package.json \
     && sed -i '' "s/Node module for scaffolding//g" package.json \
     && sed -i '' "s/Jay Baker//g" package.json \
     && echo "Done!" \
     && echo "Your module is now available at: ./${DEST}"
     
