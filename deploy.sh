# copy this into build/programs/eosc

cd ~/eos
if ! ./build.sh ubuntu build; then
    exit 1
fi

cd -

./eosc wallet unlock --password PW5JGXtrLzZN3E92tGE1k11LjLWSZEPb5298FzJteVL5MYpgHTQDK

#./eosc wallet import 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
#./eosc wallet import 5JMFozsPM4U7EKCZkC7RFZ91Z1E2eF5M5tKWtGcc6Ty9Qj9EDKu
#./eosc wallet import 5JAJ2ZJfHZX2aateJsfzh9hLUY33sy97kdxVN392wBTqoBM6MRs

#./eosc create account inita hello EOS5YTwEK7F27h3924cUcjhXxbm78tw743K2x9dxsJJwpNStNWsdQ EOS82xFh2QXC6vhRjVviopWov93ZT3KHzyTd2CrALeqUND5NDK4FG
./eosc set contract hello ../../contracts/hello/hello.wast ../../contracts/hello/hello.abi
