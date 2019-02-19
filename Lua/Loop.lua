#! /usr/local/bin/lua

(function()

    print("\nこれからループ処理をテストします\n")

    print("\nfor n=0,2,1 do ... end\n")
    for n=0,2,1 do
        print("n="..n.."のループ")
    end

    print("\nfor n=0,5,2 do ... end (偶数回のみ実行)\n")
    for n=0,5,2 do
        print("n="..n.."のループ")
    end

    print("\nwhile ~ do ... end\n")
    local str=""
    while string.len(str)<6 do
        str=str.."*"
        print(str)
    end

    print("\nrepeat ... until ~\n")
    local str=""
    repeat
        str=str.."+"
        print(str)
    until string.len(str)==6

    print("\n⚠︎ C言語との違い\n")

    print("break    : 健在")
    print("continue : ない!")

end)()