#! /usr/local/bin/lua

(function()

    test1 = true
    test2 = false

    print("\nこれから条件分岐をテストします\n")

    if test1 then
        print("どうやらtest1は真のようです")
    end

    if not test1 then
        print("どうやらtest1は偽のようです")
    elseif test2 then
        print("どうやらtest2は真のようです")
    elseif not test2 and test1 then
        print("真偽が混在しているようです")
    else
        print("どれでもないようです")
    end

end)()