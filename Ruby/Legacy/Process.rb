#! /usr/bin/env ruby

require_relative "Utility.rb"

def Process

	println("""
		プロセスID:   #{$$}

		Ruby
		バージョン:   #{RUBY_VERSION}
		リリース:     #{RUBY_RELEASE_DATE}
		パッチレベル: #{RUBY_PATCHLEVEL}

		OS: #{RUBY_PLATFORM}

		このコードの行番号: #{__LINE__}

		では,3.14秒ほど居眠りします

	""")

	sleep(3.14)

end

Process() if runningDirectly(__FILE__)