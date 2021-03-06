#! /usr/bin/env ruby

require_relative "Utility.rb"
require_relative "Classdef" # クラス定義読み込み

# Rubyには require "..." という表記法があるが,これは標準ライブラリを読み込む場合に使用を限定したい。なぜなら,例えばClassdef.rbに対して require "./Classdef" と相対パスであることを明記する ./ が必要だし,相対パスの基準がカレントディレクトリであって,このソースファイルが存在するディレクトリではないからだ。
# 指定する場合は Classdef でも Classdef.rb でもどちらでも良い

def Classes

	vec1 = Vector.new(3,2,1)
	vec2 = ExtendedVector.new(6,4,2)
	vec3 = ExtendedVector.new(54,63,72)
	vec4 = Vector.new(0,0,0)

	# 値の設定
	vec3.x = 16

	println """

		これからクラスを試します

		vec1: #{   vec1   }
		vec2: #{   vec2   }

		vec1の説明: #{   vec1.desc   }
		vec2の説明: #{   vec2.desc   }
		vec3の説明: #{   vec3.desc   }
		vec4の説明: #{   vec4.desc   }

		vec1のx座標: #{   vec1.x   }
		vec2のy座標: #{   vec2.y   }
		vec3のz座標: #{   vec3.z   }

		vec1+vec2+vec3: #{   Vector.added(vec1,vec2,vec3).desc   }
		vec4+vec2: #{   vec4.add(vec2).desc   }
		vec2×12: #{   vec2.coefMultiplied(12).desc   }

		vec2∙vec3: #{   vec2.dot(vec3)   }
		vec3×vec2: #{   vec3.cross(vec2).desc   }
		|vec3|:    #{   vec3.norm   }

		説明してもらう:
		#{   Vector.describe   }
		#{   ExtendedVector.describeFromSub   }

		バージョン表示:
		#{   Vector::VERSION   }
		#{   ExtendedVector::VERSION   }

	"""

	# アクセスできません (クラスメソッドにインスタンスからはアクセスできない)
	# vec1.describe
	# vec2.describeFromSub

	# アクセスできません (クラス変数にインスタンスからはアクセスできない)
	# vec1.VERSION
	# vec2.VERSION

	# Rubyのメソッドは obj.method() のようなかっこを付す必要はない。 obj.method で実行できる

	pnl 2

end

Classes() if runningDirectly(__FILE__)