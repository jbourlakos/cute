-module(cute_user_agent).

-export([test/0]).


test() ->
    Method = get,
    Url = <<"https://www.askapache.com/online-tools/whoami/">>,
    Headers = [],
    Payload = <<>>,
    Options = [],
    io:fwrite("~s~s~s~s~n",
        tuple_to_list(
            hackney:request(Method, Url, Headers, Payload, Options)
        )
    ).
