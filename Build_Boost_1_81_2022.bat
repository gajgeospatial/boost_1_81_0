cd
if not exist b2.exe call bootstrap.bat msvc vc143
b2.exe --toolset=msvc-14.3 address-model=64 --build-type=complete
if not exist stage\\x64\ mkdir stage\\x64
if not exist stage\\x64\\lib\ move stage\\lib stage\\x64\\lib
if not exist stage\\lib\ mkdir stage\\lib
if exist stage\\x64\\lib\\cmake\ move stage\\x64\\lib\\cmake stage\\lib\\cmake

