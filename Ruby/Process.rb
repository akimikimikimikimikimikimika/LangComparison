#! /usr/local/bin/ruby

print """
プロセスID:   #{$$}
バージョン:   #{RUBY_VERSION}
リリース:     #{RUBY_RELEASE_DATE}
OS:           #{RUBY_PLATFORM}
パッチレベル: #{RUBY_PATCHLEVEL}

このコードの行番号: #{__LINE__}

では,3.14秒ほど居眠りします


""";
sleep(3.14);