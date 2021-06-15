FROM gitpod/workspace-full:latest

RUN bash -c ". .nvm/nvm.sh && nvm install 8 && nvm use 8 && nvm alias default 8"

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix

RUN bash -c "npm i -g @angular/cli@6.1.2 && ng analytics off && npm i -g typescript@2.7.1 && npm i -g eslint"

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
