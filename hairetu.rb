a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]
def bucket_sort(arr)
  # 値を入れるバケツと、ソートした値を入れ直すバケツを二つ用意する
  bucket = []
  sorted_bucket = []
  # 与えられた配列の要素の数だけ、バケツの容量を用意する
  arr.each do
    bucket << []
  end
  # 値を一つずつバケツに入れる。バケツのindex番号と一致する箇所に値を入れる
  arr.each do |i|
    bucket[i] << i
  end
  # ソートされた値をバケツに返していく
  bucket.each do |e|
								# eは[]
		# []+[]+[]=[]						
	  sorted_bucket = sorted_bucket + e
  end

  # ソートされたバケツを返り値として返却する
  sorted_bucket
end
p bucket_sort(a)
p bucket_sort(b)
p bucket_sort(c)
