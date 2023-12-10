FROM mcr.microsoft.com/devcontainers/base:jammy
USER vscode

RUN mkdir ~/nix
RUN curl -L https://nixos.org/nix/install > ~/nix/nix_installer.sh
RUN bash -i ~/nix/nix_installer.sh --no-daemon

## Resolves: "Session bus not found\nTo circumvent this problem try the following command (with Linux and bash)\nexport $(dbus-launch)"
RUN sudo apt update && sudo apt install dbus-x11 -y
RUN echo  'export $(dbus-launch)' >> ~/.bashrc 

# Install 3D Slicer and DCMIR-FTV extension
RUN sudo apt-get install libpulse-dev libnss3 libglu1-mesa -y
RUN sudo apt-get install --reinstall libxcb-xinerama0 -y
RUN mkdir -p ~/tmp
RUN wget -O ~/tmp/slicer.tar.gz https://download.slicer.org/bitstream/65632f836865868506020c48 
RUN tar -xvf ~/tmp/slicer.tar.gz -C ~/tmp
ENV PATH="${PATH}:/home/vscode/tmp/Slicer-5.6.0-linux-amd64"
RUN sudo apt-get install libsm6 libxrender1 libxext6 libgl1 libxcomposite1 libxdamage1 libxrandr2 libfreetype6 libfontconfig1 libxcursor1 libxi6 libxtst6 libxkbcommon0 libasound2 -y
RUN sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev -y 

# Install NBIA Data Retriever
RUN wget -O ~/tmp/nbia-data-retriever-4.4.1.deb https://cbiit-download.nci.nih.gov/nbia/releases/ForTCIA/NBIADataRetriever_4.4.1/nbia-data-retriever-4.4.1.deb
ENV PATH="${PATH}:/opt/nbia-data-retriever"
RUN mkdir ~/tmp/nbia-data-retriever
RUN dpkg-deb -R ~/tmp/nbia-data-retriever-4.4.1.deb ~/tmp/nbia-data-retriever
RUN sed -i '24d' ~/tmp/nbia-data-retriever/DEBIAN/prerm
RUN sed -i '24d' ~/tmp/nbia-data-retriever/DEBIAN/prerm
RUN sed -i '25d' ~/tmp/nbia-data-retriever/DEBIAN/postinst
RUN sed -i '25d' ~/tmp/nbia-data-retriever/DEBIAN/postinst
RUN dpkg-deb -b ~/tmp/nbia-data-retriever ~/tmp/nbia-data-retriever-4.4.1_fixed.deb
RUN sudo dpkg -i ~/tmp/nbia-data-retriever-4.4.1_fixed.deb

# Install Conda and dicom-decompress 
RUN mkdir -p ~/miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
RUN bash -i ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
ENV PATH="${PATH}:/home/vscode/miniconda3/bin"
RUN pip install dicom-decompress
RUN conda install gdcm -c conda-forge

